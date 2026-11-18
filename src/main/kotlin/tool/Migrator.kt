package porting.tool

import com.github.javaparser.ParseResult
import com.github.javaparser.StaticJavaParser
import com.github.javaparser.ast.CompilationUnit
import com.github.javaparser.ast.ImportDeclaration
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration
import com.github.javaparser.ast.body.MethodDeclaration
import com.github.javaparser.ast.expr.MethodCallExpr
import com.github.javaparser.ast.expr.SimpleName
import com.github.javaparser.symbolsolver.utils.SymbolSolverCollectionStrategy
import com.github.javaparser.utils.ProjectRoot
import com.github.javaparser.utils.SourceRoot
import porting.PRINT_DEBUG
import com.github.javaparser.symbolsolver.JavaSymbolSolver
import com.github.javaparser.symbolsolver.resolution.typesolvers.CombinedTypeSolver
import com.github.javaparser.symbolsolver.resolution.typesolvers.ReflectionTypeSolver
import com.github.javaparser.symbolsolver.resolution.typesolvers.JarTypeSolver
import com.github.javaparser.symbolsolver.resolution.typesolvers.JavaParserTypeSolver
import porting.lsl.LibFunction
import porting.gen.toJavaType
import porting.gen.Generator
import porting.gen.mkGenNode
import porting.getOrPrintError
import porting.lsl.LibModel
import porting.path
import porting.solver.Solver
import java.io.IOException
import java.nio.file.FileVisitResult
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.SimpleFileVisitor
import java.nio.file.attribute.BasicFileAttributes
import kotlin.io.path.exists

class MigrationStats {
    var migrated = 0
        private set
    var skipped = 0
        private set

    fun onMigrated() {
        migrated++
    }

    fun onSkipped(reason: String) {
        skipped++
        println("Skipped call: $reason")
    }

    fun printSummary() {
        val total = migrated + skipped
        println("=== Migration summary: $migrated/$total calls migrated, $skipped skipped ===")
    }
}

@JvmOverloads
fun migrate(
    projectPath: Path,
    outputPath: Path,
    fromLib: LibModel,
    toLib: LibModel,
    classpath: List<Path> = emptyList(),
): MigrationStats {
    val stats = MigrationStats()
    val symbolSolver = SymbolSolverCollectionStrategy()
    val root: ProjectRoot = symbolSolver.collect(projectPath)

    if (classpath.isNotEmpty()) {
        val types = CombinedTypeSolver()
        types.add(ReflectionTypeSolver())
        classpath.forEach { types.add(JarTypeSolver(it)) }
        root.sourceRoots.forEach { types.add(JavaParserTypeSolver(it.root)) }
        root.sourceRoots.forEach { it.parserConfiguration.setSymbolResolver(JavaSymbolSolver(types)) }
    }
    val unsolved = mutableSetOf<LibFunction>()
    val compilationUnits = root.sourceRoots
        .map(SourceRoot::tryToParse)
        .flatten()
        .mapNotNull(ParseResult<CompilationUnit>::getOrPrintError)

    for (compilationUnit in compilationUnits) {
        val classes = compilationUnit.findAll(ClassOrInterfaceDeclaration::class.java)
        for (classDecl in classes) {
            val methodCalls = classDecl
                .findAll(MethodCallExpr::class.java)
            val wrappers = mutableMapOf<LibFunction, MethodDeclaration>()
            for (methodCall in methodCalls) {
                // Nested classes are processed separately; never rewrite a call twice.
                if (methodCall.findAncestor(ClassOrInterfaceDeclaration::class.java).orElse(null) != classDecl) continue
                val candidates = fromLib.libFunctions.filter { it.function.name == methodCall.name.asString() }
                if (candidates.isEmpty()) continue
                val func = if (classpath.isEmpty()) candidates.first() else {
                    val resolved = try { methodCall.resolve() } catch (e: RuntimeException) {
                        stats.onSkipped("unresolved signature: $methodCall (${e.javaClass.simpleName})")
                        continue
                    }
                    val owner = resolved.declaringType().qualifiedName
                    if (fromLib.libFunctions.none { it.automata.name == owner }) continue
                    val parameterTypes = (0 until resolved.numberOfParams).map { resolved.getParam(it).type.describe() }
                    val matched = candidates.singleOrNull { candidate ->
                        candidate.automata.name == owner &&
                            candidate.function.args.filter { it.name != "receiver" }.map {
                                when (val type = it.typeReference.toJavaType()) {
                                    "String" -> "java.lang.String"
                                    "Object" -> "java.lang.Object"
                                    else -> type
                                }
                            } == parameterTypes
                    }
                    if (matched == null) {
                        stats.onSkipped("no exact specification: ${resolved.qualifiedSignature}")
                        continue
                    }
                    matched
                }
                if (func.function.args.any { it.name == "receiver" }) {
                    stats.onSkipped("instance receiver generation is unsupported: ${func.automata.name}.${func.function.name}")
                    continue
                }
                val existingWrapper = wrappers[func]
                if (existingWrapper != null) {
                    methodCall.findAncestor(MethodDeclaration::class.java).ifPresent { enclosing ->
                        if (enclosing.thrownExceptions.none { it.toString() == "Exception" })
                            enclosing.addThrownException(Exception::class.java)
                    }
                    methodCall.replace(MethodCallExpr(existingWrapper.name.asString(), *methodCall.arguments.toTypedArray()))
                    stats.onMigrated()
                    continue
                }
                if (func in unsolved) {
                    stats.onSkipped("no equivalent trace found for ${func.automata.name}.${func.function.name}")
                    continue
                }
                val solved = Solver.solve(func, toLib.libFunctions)
                if (solved.isNullOrEmpty()) {
                    unsolved.add(func)
                    stats.onSkipped("no equivalent trace found for $func")
                    continue
                }
                val rootNode = mkGenNode(solved[0])
                if (rootNode == null) {
                    stats.onSkipped("can't build generation node for $func")
                    continue
                }
                val code = Generator().generate(func, rootNode)
                val newFunction = StaticJavaParser.parseMethodDeclaration(code)
                // Different source owners can produce wrappers with the same signature.
                val baseName = newFunction.nameAsString
                var suffix = 1
                while (classDecl.methods.any { it.nameAsString == newFunction.nameAsString &&
                        it.parameters.map { p -> p.typeAsString } == newFunction.parameters.map { p -> p.typeAsString } }) {
                    newFunction.setName("${baseName}_${suffix++}")
                }
                classDecl.addMember(newFunction)
                wrappers[func] = newFunction
                // The generated wrapper always declares `throws Exception` (Generator.kt), so any
                // existing method whose body we're inserting this call into must also declare it,
                // or the call site simply doesn't compile (unreported checked exception).
                methodCall.findAncestor(MethodDeclaration::class.java).ifPresent { enclosing ->
                    if (enclosing.thrownExceptions.none { it.toString() == "Exception" }) {
                        enclosing.addThrownException(Exception::class.java)
                    }
                }
                val args = methodCall.arguments.toTypedArray()
                val callMethod = MethodCallExpr(newFunction.name.asString(), *args)
                methodCall.replace(callMethod)
                val neededAutomatas = solved[0].collectAutomata()
                for (automata in neededAutomatas) {
                    // @JavaAccessor/@JavaConstructor automata carry a synthetic spec-only name
                    // (Generator fully-qualifies every call to them with the real accessor/type
                    // expression instead), so their "name" is not necessarily a real importable
                    // Java symbol - importing it can fail to compile even though nothing needs it.
                    if (porting.gen.hasSyntheticJavaBinding(automata)) continue
                    compilationUnit.addImport(
                        ImportDeclaration(automata.name, true, true)
                    )
                }
                stats.onMigrated()
            }
        }
        // An unused source import alone would keep otherwise dependency-free
        // generated code from compiling after the source jar is removed.
        val sourceOwners = fromLib.libFunctions.map { it.automata.name }.toSet()
        compilationUnit.imports.removeIf { imported ->
            !imported.isStatic && !imported.isAsterisk && imported.nameAsString in sourceOwners &&
                compilationUnit.findAll(SimpleName::class.java).none { used ->
                    used.identifier == imported.name.identifier && used.findAncestor(ImportDeclaration::class.java).isEmpty
                }
        }
        val compUnitPath = compilationUnit.path(projectPath)
        val migratedPath = outputPath.resolve(compUnitPath)
        if (migratedPath.exists()) Files.walkFileTree(migratedPath, DeleteFileVisitor())

        if (PRINT_DEBUG) println("Generated $migratedPath")
        Files.createDirectories(migratedPath.parent)
        Files.createFile(migratedPath)
        Files.writeString(migratedPath, compilationUnit.toString())
    }
    stats.printSummary()
    return stats
}

class DeleteFileVisitor(): SimpleFileVisitor<Path>() {
    override fun postVisitDirectory(dir: Path, exc: IOException?): FileVisitResult {
        Files.delete(dir)
        return FileVisitResult.CONTINUE
    }

    override fun visitFile(file: Path, attrs: BasicFileAttributes): FileVisitResult {
        Files.delete(file)
        return FileVisitResult.CONTINUE
    }
}

package porting.tool

import com.github.javaparser.ParseResult
import com.github.javaparser.StaticJavaParser
import com.github.javaparser.ast.CompilationUnit
import com.github.javaparser.ast.ImportDeclaration
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration
import com.github.javaparser.ast.expr.MethodCallExpr
import com.github.javaparser.symbolsolver.utils.SymbolSolverCollectionStrategy
import com.github.javaparser.utils.ProjectRoot
import com.github.javaparser.utils.SourceRoot
import porting.PRINT_DEBUG
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

fun migrate(
    projectPath: Path,
    outputPath: Path,
    fromLib: LibModel,
    toLib: LibModel,
) {
    val symbolSolver = SymbolSolverCollectionStrategy()
    val root: ProjectRoot = symbolSolver.collect(projectPath)

    val compilationUnits = root.sourceRoots
        .map(SourceRoot::tryToParse)
        .flatten()
        .mapNotNull(ParseResult<CompilationUnit>::getOrPrintError)

    for (compilationUnit in compilationUnits) {
        val classes = compilationUnit.findAll(ClassOrInterfaceDeclaration::class.java)
        for (classDecl in classes) {
            val methodCalls = classDecl
                .findAll(MethodCallExpr::class.java)
            for (methodCall in methodCalls) {
                val func = fromLib.libFunctions.find { it.function.name == methodCall.name.asString() }
                if (func != null) {
                    val solved = Solver.solve(func, toLib.libFunctions)
                    if (solved.isNullOrEmpty()) {
                        println("Can't replace function $func")
                        return
                    } else {
                        val rootNode = mkGenNode(solved[0]) ?: return
                        val code = Generator().generate(func, rootNode)
                        val newFunction = StaticJavaParser.parseMethodDeclaration(code)
                        classDecl.addMember(newFunction)
                        val args = methodCall.arguments.toTypedArray()
                        val callMethod = MethodCallExpr(newFunction.name.asString(), *args)
                        methodCall.replace(callMethod)
                        val neededAutomatas = solved[0].collectAutomata()
                        for (automata in neededAutomatas)
                            compilationUnit.addImport(
                                ImportDeclaration(automata.name, true, true)
                            )
                    }
                }
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
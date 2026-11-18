package porting.corpus

import org.junit.jupiter.api.DynamicTest
import porting.lsl.LSLParser
import porting.tool.migrate
import java.lang.reflect.InvocationTargetException
import java.net.URLClassLoader
import java.nio.file.Files
import java.nio.file.Path
import java.util.Properties
import java.util.Random
import javax.tools.DiagnosticCollector
import javax.tools.JavaFileObject
import javax.tools.ToolProvider
import kotlin.streams.asSequence
import kotlin.test.assertEquals

/**
 * Migrates a `SpecCorpus/<entry>` call site with the real pipeline, compiles the original and the
 * generated `Api`, and compares both reflectively. Jar paths and the test classpath come from
 * `corpus.properties` (task `generateCorpusProperties`).
 */
object CorpusHarness {

    private val props: Properties by lazy {
        Properties().also { p ->
            val stream = Thread.currentThread().contextClassLoader.getResourceAsStream("corpus.properties")
                ?: error("corpus.properties missing from the test classpath - run via Gradle (processTestResources).")
            stream.use { p.load(it) }
        }
    }

    private fun jarPath(mavenArtifactId: String): Path =
        Path.of(props.getProperty("$mavenArtifactId.jar") ?: error("Unknown corpus jar: $mavenArtifactId"))

    private val testClasspath: String
        get() = props.getProperty("test.classpath") ?: error("test.classpath missing from corpus.properties")

    class Migrated(val source: Class<*>, val target: Class<*>)

    /**
     * Generated source is written to `<corpusDir>/generated`; compiled classes go to a temp directory.
     * [jarArtifactId] is the original library's artifact, used by the migrator to resolve overloads.
     */
    fun migrateAndCompile(
        corpusDir: Path,
        sourceSpecFile: String,
        targetSpecFile: String,
        jarArtifactId: String,
        sourceDirectory: String = "source-demo",
        generatedDirectory: String = "generated",
    ): Migrated {
        val specsDir = corpusDir.resolve("specs").toString()
        val fromLib = LSLParser.parse(specsDir, "$specsDir/$sourceSpecFile")
        val toLib = LSLParser.parse(specsDir, "$specsDir/$targetSpecFile")

        val sourceProject = corpusDir.resolve(sourceDirectory)
        val generatedRoot = corpusDir.resolve(generatedDirectory)
        val stats = migrate(sourceProject, generatedRoot, fromLib, toLib, listOf(jarPath(jarArtifactId)))
        check(stats.skipped == 0) { "Migration skipped ${stats.skipped} of ${stats.migrated + stats.skipped} calls" }

        val classesDir = Files.createTempDirectory("corpus-classes")
        val sourceClasses = classesDir.resolve("source-classes")
        compile(listOf(sourceProject.resolve("src/main/java/Api.java")), sourceClasses)

        val generatedApiFile = Files.walk(generatedRoot).asSequence()
            .firstOrNull { it.toString().endsWith(".java") }
            ?: error("Migration produced no generated Java source under $generatedRoot")
        val targetClasses = classesDir.resolve("target-classes")
        compile(listOf(generatedApiFile), targetClasses)

        val parent = Thread.currentThread().contextClassLoader
        val sourceLoader = URLClassLoader(arrayOf(sourceClasses.toUri().toURL()), parent)
        val targetLoader = URLClassLoader(arrayOf(targetClasses.toUri().toURL()), parent)
        return Migrated(sourceLoader.loadClass("Api"), targetLoader.loadClass("Api"))
    }

    private fun compile(sourceFiles: List<Path>, outDir: Path) {
        Files.createDirectories(outDir)
        val compiler = ToolProvider.getSystemJavaCompiler()
            ?: error("No system Java compiler available - run tests on a JDK, not a JRE.")
        val fileManager = compiler.getStandardFileManager(null, null, null)
        val units = fileManager.getJavaFileObjectsFromPaths(sourceFiles)
        val diagnostics = DiagnosticCollector<JavaFileObject>()
        val options = listOf("-cp", testClasspath, "-d", outDir.toString())
        val ok = compiler.getTask(null, fileManager, diagnostics, options, null, units).call()
        if (!ok) {
            error("javac failed for $sourceFiles:\n" + diagnostics.diagnostics.joinToString("\n"))
        }
    }

    /** The outcome of one reflective call: either a returned value or the thrown exception's class. */
    sealed interface Outcome
    data class Value(val value: Any?) : Outcome
    data class Thrown(val exceptionClass: Class<out Throwable>) : Outcome

    fun invoke(clazz: Class<*>, name: String, paramTypes: Array<Class<*>>, vararg args: Any?): Outcome {
        val method = clazz.getMethod(name, *paramTypes)
        return try {
            Value(method.invoke(null, *args))
        } catch (e: InvocationTargetException) {
            Thrown(e.cause!!.javaClass)
        }
    }

    /** Structural equality that treats byte[]/char[] by content, like Arrays.equals. */
    fun valuesEqual(a: Any?, b: Any?): Boolean = when {
        a is ByteArray && b is ByteArray -> a.contentEquals(b)
        a is CharArray && b is CharArray -> a.contentEquals(b)
        else -> a == b
    }

    /** True only if both sides returned an equal value, or both threw the same exception class. */
    fun outcomesMatchExactly(a: Outcome, b: Outcome): Boolean = when {
        a is Value && b is Value -> valuesEqual(a.value, b.value)
        a is Thrown && b is Thrown -> a.exceptionClass == b.exceptionClass
        else -> false
    }

    /** Renders an outcome as in the CONTRACTS.md tables, e.g. `[0,0]` or `throws IllegalArgumentException`. */
    fun describe(o: Outcome): String = when (o) {
        is Thrown -> "throws ${o.exceptionClass.simpleName}"
        is Value -> when (val v = o.value) {
            null -> "null"
            is ByteArray -> v.joinToString(",", "[", "]")
            is CharArray -> v.concatToString()
            else -> v.toString()
        }
    }

    /** Compact argument rendering for failure messages. */
    fun describeArg(v: Any?): String = when (v) {
        null -> "null"
        is ByteArray -> "byte[${v.size}]" + v.take(16).joinToString(",", "{", if (v.size > 16) ",...}" else "}")
        is CharArray -> "\"${String(v)}\"".let { if (it.length > 80) it.take(80) + "...\"" else it }
        is String -> "\"$v\"".let { if (it.length > 80) it.take(80) + "...\"" else it }
        else -> v.toString()
    }

    /** One recorded mismatch: the arguments that produced it and both sides' outcomes. */
    class Mismatch(val args: List<Any?>, val sourceOutcome: Outcome, val targetOutcome: Outcome) {
        override fun toString(): String {
            val argsStr = args.joinToString(", ") { describeArg(it) }
            return "($argsStr) -> source=${describe(sourceOutcome)}, target=${describe(targetOutcome)}"
        }
    }

    class KeyResult(val total: Int, val matches: Int, val examples: List<Mismatch>) {
        /** Failure message suffix listing recorded mismatches; empty when there are none. */
        fun exampleReport(): String =
            if (examples.isEmpty()) "" else examples.joinToString("\n", prefix = "\nExample mismatches:\n") { "  $it" }
    }

    private const val MAX_EXAMPLES_PER_KEY = 5

    /** Reports one JUnit dynamic test per method signature; [expected] defaults to all calls matching. */
    fun Comparison.dynamicTests(expected: Map<String, Int> = emptyMap()): List<DynamicTest> =
        perKeyResults().map { (key, result) ->
            val expectedMatches = expected[key] ?: result.total
            DynamicTest.dynamicTest("$key: ${result.matches}/${result.total}") {
                assertEquals(
                    expectedMatches, result.matches,
                    "$key: expected $expectedMatches/${result.total}" + result.exampleReport(),
                )
            }
        }

    /** Payload length sweeps 0..159 first, then random lengths up to 2048. */
    fun randomPayload(random: Random, index: Int): ByteArray {
        val length = if (index < SWEEP_LENGTHS) index else random.nextInt(MAX_RANDOM_LENGTH + 1)
        return ByteArray(length).also { random.nextBytes(it) }
    }

    const val ROUND_TRIP_PAYLOADS = 600
    private const val SWEEP_LENGTHS = 160
    private const val MAX_RANDOM_LENGTH = 2048

    /** Accumulates source-vs-target comparisons per method signature (name + parameter types). */
    class Comparison(private val source: Class<*>, private val target: Class<*>) {
        private class Accumulator {
            var total = 0
            var matches = 0
            val examples = mutableListOf<Mismatch>()
        }

        private val perKey = linkedMapOf<String, Accumulator>()

        val total: Int get() = perKey.values.sumOf { it.total }
        val matches: Int get() = perKey.values.sumOf { it.matches }
        val methodsSeen: Set<String> get() = perKey.keys

        fun perKeyResults(): Map<String, KeyResult> =
            perKey.mapValues { KeyResult(it.value.total, it.value.matches, it.value.examples) }

        fun compare(name: String, types: Array<Class<*>>, vararg args: Any?) {
            val key = name + types.toList()
            val acc = perKey.getOrPut(key) { Accumulator() }
            acc.total++
            val a = invoke(source, name, types, *args)
            val b = invoke(target, name, types, *args)
            if (outcomesMatchExactly(a, b)) {
                acc.matches++
            } else if (acc.examples.size < MAX_EXAMPLES_PER_KEY) {
                acc.examples += Mismatch(args.toList(), a, b)
            }
        }
    }
}

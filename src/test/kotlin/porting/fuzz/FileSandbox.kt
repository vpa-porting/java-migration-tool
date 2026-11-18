package porting.fuzz

import porting.corpus.CorpusHarness
import porting.corpus.CorpusHarness.Outcome
import porting.corpus.CorpusHarness.Thrown
import porting.corpus.CorpusHarness.Value
import java.nio.file.Files
import java.nio.file.OpenOption
import java.nio.file.Path

/**
 * File-to-file library calls (`Hex.hexToBytesStreaming(Path, Path, ...)`) return nothing, so the observable
 * behaviour is the exception class plus the state the call leaves in the output file. [compareFiles] runs the
 * original and the migrated `Api` on identical input and output files (one fixed pair per side, reused by every
 * call) and folds that state into an [Outcome]:
 * - returned: the output file's bytes ("no output file" if it was never created);
 * - threw and the output file is exactly as it was before the call: just the exception class;
 * - threw but the output file changed (created, truncated, partially written): the class and the file state.
 */
object FileSandbox {
    private val dir: Path = Files.createTempDirectory("fuzz-files").also { d ->
        Runtime.getRuntime().addShutdownHook(Thread { d.toFile().deleteRecursively() })
    }
    private val input = dir.resolve("in")
    private val outOriginal = dir.resolve("out-original")
    private val outMigrated = dir.resolve("out-migrated")

    val pathClass: Class<*> = Path::class.java
    val optionsClass: Class<*> = Array<OpenOption>::class.java

    /**
     * [args] builds the argument list from the (input, output) paths; [logged] is what the report shows
     * instead of the paths. [before] is the output file's content before the call (null = does not exist).
     */
    fun compareFiles(
        subject: CorpusHarness.Migrated,
        name: String,
        types: Array<Class<*>>,
        features: List<String>,
        content: ByteArray,
        before: ByteArray?,
        logged: List<Any?>,
        args: (Path, Path) -> Array<Any?>,
    ) {
        val a = run(subject.source, name, types, content, before, outOriginal, args)
        val b = run(subject.target, name, types, content, before, outMigrated, args)
        DiffRecorder.observe("$name(${types.joinToString { it.simpleName }})", features, logged, a, b)
    }

    private fun run(
        clazz: Class<*>, name: String, types: Array<Class<*>>, content: ByteArray, before: ByteArray?,
        out: Path, args: (Path, Path) -> Array<Any?>,
    ): Outcome {
        Files.write(input, content)
        Files.deleteIfExists(out)
        if (before != null) Files.write(out, before)
        val result = CorpusHarness.invoke(clazz, name, types, *args(input, out))
        val after = if (Files.exists(out)) Files.readAllBytes(out) else null
        return when (result) {
            is Value -> Value(after ?: "no output file")
            is Thrown ->
                if ((before == null && after == null) || (before != null && after != null && before.contentEquals(after))) result
                else Value("throws ${result.exceptionClass.simpleName}; output file: " +
                    (after?.let { Render.arg(it, Render.FULL) } ?: "gone"))
        }
    }
}

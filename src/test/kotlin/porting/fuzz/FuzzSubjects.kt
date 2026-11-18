package porting.fuzz

import porting.corpus.CorpusHarness
import java.nio.file.Path

/**
 * The migrated corpus entries shared by all fuzz targets: migrated and compiled once per JVM, since
 * a fuzz target is invoked millions of times and must not repeat the pipeline.
 */
object FuzzSubjects {
    val harmlessEffects: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(Path.of("SpecCorpus/hexutils-to-java-hexformat"),
            "hexharmless-effects.lsl", "java-hexformat.lsl", "hexutils", "source-harmless-effects", "generated-harmless-effects")
    }
    val dump: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(Path.of("SpecCorpus/hexutils-to-java-hexformat"),
            "hexdump-source.lsl", "hexdump-jdk.lsl", "hexutils", "source-dump", "generated-dump")
    }
    val base64IO: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/migbase64-to-java-util-base64"),
            sourceSpecFile = "base64io-source.lsl",
            targetSpecFile = "base64io-jdk.lsl",
            jarArtifactId = "migbase64",
            sourceDirectory = "source-base64io",
            generatedDirectory = "generated-base64io",
        )
    }
    val harmless: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/hexutils-to-java-hexformat"),
            sourceSpecFile = "hexharmless.lsl",
            targetSpecFile = "java-hexformat.lsl",
            jarArtifactId = "hexutils",
            sourceDirectory = "source-harmless",
            generatedDirectory = "generated-harmless",
        )
    }
    val base64: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/migbase64-to-java-util-base64"),
            sourceSpecFile = "migbase64.lsl",
            targetSpecFile = "java-util-base64.lsl",
            jarArtifactId = "migbase64",
        )
    }

    val hex: CorpusHarness.Migrated by lazy {
        CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/hexutils-to-java-hexformat"),
            sourceSpecFile = "hexutils.lsl",
            targetSpecFile = "java-hexformat.lsl",
            jarArtifactId = "hexutils",
        )
    }

    /**
     * Calls [name] with identical arguments on the original and the migrated `Api` and hands both
     * outcomes (a returned value, or the thrown exception class) to [DiffRecorder]. Arguments are
     * produced by [args] once per side, because the original decoders may modify their input arrays.
     * [features] describe the input for the report; they never influence the call.
     */
    fun compare(
        subject: CorpusHarness.Migrated,
        name: String,
        types: Array<Class<*>>,
        features: List<String>,
        args: () -> Array<Any?>,
    ) {
        val a = CorpusHarness.invoke(subject.source, name, types, *args())
        val b = CorpusHarness.invoke(subject.target, name, types, *args())
        DiffRecorder.observe("$name(${types.joinToString { it.simpleName }})", features, args().toList(), a, b)
    }
}

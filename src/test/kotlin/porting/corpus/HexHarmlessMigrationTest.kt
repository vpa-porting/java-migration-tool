package porting.corpus

import org.junit.jupiter.api.Test
import porting.fuzz.FuzzSubjects
import kotlin.test.assertTrue
import kotlin.test.assertEquals
import java.nio.file.Files
import java.nio.file.Path
import javax.tools.ToolProvider

class HexHarmlessMigrationTest {
    private val subject get() = FuzzSubjects.harmless
    private val char = Char::class.javaPrimitiveType!!
    private val byte = Byte::class.javaPrimitiveType!!
    private val bytes = ByteArray::class.java

    private fun compare(name: String, types: Array<Class<*>>, vararg args: Any?) {
        fun fresh() = args.map { if (it is ByteArray) it.clone() else it }.toTypedArray()
        val sourceArgs = fresh()
        val targetArgs = fresh()
        val a = CorpusHarness.invoke(subject.source, name, types, *sourceArgs)
        val b = CorpusHarness.invoke(subject.target, name, types, *targetArgs)
        assertTrue(CorpusHarness.outcomesMatchExactly(a, b), "$name: ${args.toList()} original=$a generated=$b")
        for (i in args.indices) if (args[i] is ByteArray) {
            assertTrue((args[i] as ByteArray).contentEquals(sourceArgs[i] as ByteArray), "original mutated byte input")
            assertTrue((args[i] as ByteArray).contentEquals(targetArgs[i] as ByteArray), "generated method mutated byte input")
        }
    }

    @Test fun `scalar mappings exhaust all UTF-16 code units`() {
        for (code in 0..65535) for (name in listOf("convertToHarmless", "convertFromHarmless"))
            compare(name, arrayOf(char), code.toChar())
    }

    @Test fun `encoders and pairs match original including nulls`() {
        for (b in -128..127) compare("byteToHexHarmless", arrayOf(byte), b.toByte())
        val inputs = listOf(null, byteArrayOf(), ByteArray(256) { it.toByte() }) +
            (1..120).map { size -> ByteArray(size) { (it * 97 + size).toByte() } }
        for (input in inputs) for (name in listOf("bytesToHexHarmless", "bytesToHexStrHarmless"))
            compare(name, arrayOf(bytes), input)
        for (a in "gh2k456789mbcdtf!0A\u0000\uffff") for (b in "gh2k456789mbcdtf!0A\u0000\uffff")
            compare("hexCharHarmlessToByte", arrayOf(char, char), a, b)
    }

    @Test fun `generated harmless API compiles without the original library`() {
        subject // Generate through the real pipeline before invoking a JDK-only compiler.
        val source = Path.of("SpecCorpus/hexutils-to-java-hexformat/generated-harmless/src/main/java/Api.java")
        val out = Files.createTempDirectory("harmless-jdk-only")
        assertEquals(0, ToolProvider.getSystemJavaCompiler().run(null, null, null,
            "-classpath", "", "-d", out.toString(), source.toString()))
    }
}

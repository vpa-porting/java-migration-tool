package porting.corpus

import net.lbruun.hexutils.Hex
import org.junit.jupiter.api.BeforeAll
import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.TestInstance
import org.junit.jupiter.params.ParameterizedTest
import org.junit.jupiter.params.provider.CsvSource
import porting.corpus.CorpusHarness.dynamicTests
import porting.corpus.CorpusHarness.randomPayload
import java.nio.file.Path
import java.nio.file.Files
import java.nio.file.OpenOption
import java.nio.file.StandardOpenOption
import java.util.Random
import kotlin.test.assertEquals
import kotlin.test.assertContentEquals

/**
 * hexutils 1.0.0 -> java.util.HexFormat. Differential comparison of the original and the migrated
 * `Api` over the 9 migrated methods; see `SpecCorpus/hexutils-to-java-hexformat/CONTRACTS.md`.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class HexutilsCorpusTest {

    private lateinit var migrated: CorpusHarness.Migrated

    @BeforeAll
    fun migrate() {
        migrated = CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/hexutils-to-java-hexformat"),
            sourceSpecFile = "hexutils.lsl",
            targetSpecFile = "java-hexformat.lsl",
            jarArtifactId = "hexutils",
        )
    }

    private val hexCases = Hex.HexCase.values()
    private val hexCase = Hex.HexCase::class.java
    private val bytes = ByteArray::class.java
    private val string = String::class.java
    private val chars = CharArray::class.java
    private val charSequence = CharSequence::class.java

    private fun comparison() = CorpusHarness.Comparison(migrated.source, migrated.target)

    private fun CorpusHarness.Comparison.encode(data: ByteArray?) {
        for (caseType in hexCases) {
            val firstByte = data?.firstOrNull() ?: 0
            compare("byteToHex", arrayOf(Byte::class.javaPrimitiveType!!, hexCase), firstByte, caseType)
            compare("bytesToHexStr", arrayOf(bytes, hexCase), data, caseType)
            for (delim in listOf(null) + DELIMITERS) {
                compare("bytesToHex", arrayOf(bytes, hexCase, string), data, caseType, delim)
                compare("bytesToHexStr", arrayOf(bytes, hexCase, string), data, caseType, delim)
            }
        }
    }

    private fun CorpusHarness.Comparison.decode(text: String?) {
        for (delim in listOf(null) + DELIMITERS) decode(text, delim)
        compare("hexStrToBytes", arrayOf(charSequence), text)
        compare("hexStrToBytes", arrayOf(chars), text?.toCharArray())
    }

    private fun CorpusHarness.Comparison.decode(text: String?, delim: String?) {
        compare("hexStrToBytes", arrayOf(charSequence, string), text, delim)
        compare("hexStrToBytes", arrayOf(chars, string), text?.toCharArray(), delim)
    }

    @TestFactory
    fun `well-formed input matches exactly`(): List<DynamicTest> {
        val c = comparison()
        val random = Random(20260926)
        repeat(CorpusHarness.ROUND_TRIP_PAYLOADS) { i ->
            val data = randomPayload(random, i)
            c.encode(data)
            val caseType = hexCases[random.nextInt(hexCases.size)]
            val plain = Hex.bytesToHexStr(data, caseType)
            c.compare("hexStrToBytes", arrayOf(charSequence), plain)
            c.compare("hexStrToBytes", arrayOf(chars), plain.toCharArray())
            for (delim in DELIMITERS) {
                c.decode(Hex.bytesToHexStr(data, caseType, delim), delim)
            }
        }
        return c.dynamicTests()
    }

    @TestFactory
    fun `malformed and boundary input matches the documented baseline`(): List<DynamicTest> {
        val c = comparison()

        c.encode(null)
        c.decode(null)
        c.encode(ByteArray(0))
        c.decode("")
        for (i in 0 until 256) c.encode(byteArrayOf(i.toByte()))
        for (i in 0 until 65536) c.encode(byteArrayOf((i ushr 8).toByte(), i.toByte()))

        val random = Random(20260926)
        repeat(CorpusHarness.ROUND_TRIP_PAYLOADS) { i ->
            val data = randomPayload(random, i)
            c.encode(data)
            val hex = Hex.bytesToHexStr(data, hexCases[random.nextInt(hexCases.size)])
            c.decode(hex)
            c.decode(hex.uppercase())
            c.decode(hex.lowercase())
        }
        for (n in 0 until 10000) c.decode(malformedString(n))
        for (code in 0 until 65536) {
            c.compare("isHexChar", arrayOf(Char::class.javaPrimitiveType!!), code.toChar())
        }
        assertEquals(9, c.methodsSeen.size, "all 9 migrated hexutils methods must be exercised")

        assertEquals(TOTAL_CALLS, c.total, "corpus size changed")
        assertEquals(TOTAL_MATCHES, c.matches, "match count differs from the baseline in CONTRACTS.md")
        return c.dynamicTests(EXPECTED_MATCHES)
    }

    @ParameterizedTest(name = "hexStrToBytes(\"{0}\")")
    @CsvSource(
        "a, throws IllegalArgumentException, throws IllegalArgumentException",
        "az, throws HexConversionException, throws NumberFormatException",
        "abc, throws IllegalArgumentException, throws IllegalArgumentException",
    )
    fun `exception-class divergences from CONTRACTS-md`(input: String, expectedSource: String, expectedTarget: String) {
        val params = arrayOf<Class<*>>(charSequence)
        assertEquals(expectedSource, CorpusHarness.describe(CorpusHarness.invoke(migrated.source, "hexStrToBytes", params, input)))
        assertEquals(expectedTarget, CorpusHarness.describe(CorpusHarness.invoke(migrated.target, "hexStrToBytes", params, input)))
    }

    @TestFactory
    fun `delimiter decoding preserves allocation and index failures`(): List<DynamicTest> {
        val c = comparison()
        for ((text, delim) in listOf("--" to "-", "1AcF-" to "-", "cf0Bc" to "-",
                                     "3D3c3d" to "||", "A0-B1" to "-", "" to "-",
                                     "|A0|||" to "||", "|f" to "||", "0cccccccccc" to ":",
                                     "DDDDDDDDDDDDE\u1414\u1415c34" to "||")) {
            c.decode(text, delim)
        }
        return c.dynamicTests()
    }

    @Test
    fun `stream decoding preserves exact outcomes and output state across open options`() {
        val root = Files.createTempDirectory("hex-stream-refinement")
        val input = root.resolve("input")
        val sourceOut = root.resolve("source")
        val targetOut = root.resolve("target")
        val options = listOf<Array<OpenOption>>(emptyArray(), arrayOf(StandardOpenOption.APPEND),
            arrayOf(StandardOpenOption.CREATE_NEW), arrayOf(StandardOpenOption.WRITE, StandardOpenOption.CREATE))
        val cases = listOf("" to null, "f" to null, "fF0" to null, "66eeee" to "||", "--" to "-",
            "-0" to "-", "0-1" to "-", "||\r\nAA|" to "||", "" to "a")
        val types = arrayOf(Path::class.java, Path::class.java, String::class.java, Array<OpenOption>::class.java)
        fun run(clazz: Class<*>, out: Path, text: String, delim: String?, opts: Array<OpenOption>, before: ByteArray?)
            : Pair<CorpusHarness.Outcome, ByteArray?> {
            Files.write(input, text.toByteArray(Charsets.ISO_8859_1))
            Files.deleteIfExists(out)
            if (before != null) Files.write(out, before)
            val result = CorpusHarness.invoke(clazz, "hexToBytesStreaming", types, input, out, delim, opts)
            return result to if (Files.exists(out)) Files.readAllBytes(out) else null
        }
        try {
            for ((text, delim) in cases) for (opts in options) for (before in listOf(null, byteArrayOf(7, 8, 9))) {
                val a = run(migrated.source, sourceOut, text, delim, opts, before)
                val b = run(migrated.target, targetOut, text, delim, opts, before)
                val label = "text=$text delim=$delim options=${opts.toList()} before=${before?.toList()}"
                assertEquals(true, CorpusHarness.outcomesMatchExactly(a.first, b.first), label)
                assertContentEquals(a.second, b.second, label)
            }
            // Exact source exception type is deliberately still different; preserve its partial file.
            for (text in listOf("00-AA-ZZ", "00-AA-\u00fe")) for (opts in options)
                for (before in listOf(null, byteArrayOf(7, 8, 9))) {
                    val a = run(migrated.source, sourceOut, text, "-", opts, before)
                    val b = run(migrated.target, targetOut, text, "-", opts, before)
                    assertContentEquals(a.second, b.second, "partial output: $text ${opts.toList()}")
                    val sourceFailure = a.first as CorpusHarness.Thrown
                    val targetFailure = b.first as CorpusHarness.Thrown
                    if (sourceFailure.exceptionClass.simpleName == "HexConversionException") {
                        assertEquals(NumberFormatException::class.java, targetFailure.exceptionClass)
                    } else {
                        assertEquals(sourceFailure.exceptionClass, targetFailure.exceptionClass)
                    }
                }
        } finally {
            root.toFile().deleteRecursively()
        }
    }

    private fun malformedString(n: Int): String {
        var v = n
        return buildString {
            repeat(1 + n % 6) {
                append(MALFORMED_ALPHABET[v % MALFORMED_ALPHABET.length])
                v /= MALFORMED_ALPHABET.length
            }
        }
    }

    private companion object {
        val DELIMITERS = listOf(":", "-", "||", " ")
        const val MALFORMED_ALPHABET = "0123456789abcdefABCDEF!@ xyz\t\n"
        // Baseline refreshed 2026-11-14 after the delimiter/length specification refinement.
        // Same corpus and exact outcome comparison; +11,336 matches, no method count decreased.
        const val TOTAL_CALLS = 1800616
        const val TOTAL_MATCHES = 1778496

        val EXPECTED_MATCHES = mapOf(
            "byteToHex[byte, class net.lbruun.hexutils.Hex\$HexCase]" to 132788,
            "bytesToHex[class [B, class net.lbruun.hexutils.Hex\$HexCase, class java.lang.String]" to 663940,
            "bytesToHexStr[class [B, class net.lbruun.hexutils.Hex\$HexCase, class java.lang.String]" to 663940,
            "bytesToHexStr[class [B, class net.lbruun.hexutils.Hex\$HexCase]" to 132788,
            "hexStrToBytes[interface java.lang.CharSequence]" to 9502,
            "hexStrToBytes[class [C]" to 9502,
            "hexStrToBytes[interface java.lang.CharSequence, class java.lang.String]" to 50250,
            "hexStrToBytes[class [C, class java.lang.String]" to 50250,
            "isHexChar[char]" to 65536,
        )
    }
}

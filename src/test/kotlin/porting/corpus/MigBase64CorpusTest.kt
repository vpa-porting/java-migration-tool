package porting.corpus

import org.junit.jupiter.api.BeforeAll
import org.junit.jupiter.api.DynamicTest
import org.junit.jupiter.api.TestFactory
import org.junit.jupiter.api.TestInstance
import org.junit.jupiter.params.ParameterizedTest
import org.junit.jupiter.params.provider.CsvSource
import porting.corpus.CorpusHarness.dynamicTests
import porting.corpus.CorpusHarness.randomPayload
import java.nio.file.Path
import java.util.Base64
import java.util.Random
import kotlin.test.assertEquals

/**
 * MiGBase64 2.2 -> java.util.Base64. Differential comparison of the original and the migrated `Api`
 * over all 11 public methods; see `SpecCorpus/migbase64-to-java-util-base64/CONTRACTS.md`.
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class MigBase64CorpusTest {

    private lateinit var migrated: CorpusHarness.Migrated

    @BeforeAll
    fun migrate() {
        migrated = CorpusHarness.migrateAndCompile(
            corpusDir = Path.of("SpecCorpus/migbase64-to-java-util-base64"),
            sourceSpecFile = "migbase64.lsl",
            targetSpecFile = "java-util-base64.lsl",
            jarArtifactId = "migbase64",
        )
    }

    private val bytes = ByteArray::class.java
    private val bool = Boolean::class.javaPrimitiveType!!
    private val int = Int::class.javaPrimitiveType!!

    private fun comparison() = CorpusHarness.Comparison(migrated.source, migrated.target)

    private fun CorpusHarness.Comparison.encode(data: ByteArray?) {
        for (lines in booleanArrayOf(false, true)) {
            for (name in arrayOf("encodeToByte", "encodeToChar", "encodeToString")) {
                compare(name, arrayOf(bytes, bool), data, lines)
            }
            compare("encodeToByte", arrayOf(bytes, int, int, bool), data, 0, data?.size ?: 0, lines)
            if (data != null) {
                val padded = data.padded(before = 3, after = 4)
                compare("encodeToByte", arrayOf(bytes, int, int, bool), padded, 3, data.size, lines)
            }
        }
    }

    // Fresh arrays per call: the decoders may modify their input.
    private fun CorpusHarness.Comparison.decode(text: String?) {
        fun latin1() = text?.toByteArray(Charsets.ISO_8859_1)
        for (name in arrayOf("decode", "decodeFast")) {
            compare(name, arrayOf(String::class.java), text)
            compare(name, arrayOf(CharArray::class.java), text?.toCharArray())
            compare(name, arrayOf(bytes), latin1())
        }
        val raw = latin1()
        compare("decode", arrayOf(bytes, int, int), raw, 0, raw?.size ?: 0)
        if (raw != null) {
            compare("decode", arrayOf(bytes, int, int), raw.padded(before = 2, after = 3), 2, raw.size)
        }
    }

    private fun ByteArray.padded(before: Int, after: Int) =
        ByteArray(before + size + after).also { copyInto(it, before) }

    private fun CorpusHarness.Comparison.roundTrips(seed: Long, withJunk: Boolean) {
        val random = Random(seed)
        repeat(CorpusHarness.ROUND_TRIP_PAYLOADS) { i ->
            val data = randomPayload(random, i)
            encode(data)
            for (encoded in listOf(Base64.getEncoder().encodeToString(data), Base64.getMimeEncoder().encodeToString(data))) {
                decode(encoded)
                if (withJunk) decode("!$encoded!")
            }
        }
    }

    @TestFactory
    fun `well-formed input matches exactly`(): List<DynamicTest> =
        comparison().apply { roundTrips(seed = 20260925, withJunk = false) }.dynamicTests()

    @TestFactory
    fun `malformed and boundary input matches the documented baseline`(): List<DynamicTest> {
        val c = comparison()

        c.encode(null)
        c.decode(null)
        for (text in FIXED_STRINGS) c.decode(text)

        for (i in 0 until 256) {
            c.encode(byteArrayOf(i.toByte()))
            c.decode(i.toChar().toString())
        }
        for (i in 0 until 65536) {
            c.compare("encodeToByte", arrayOf(bytes, bool), byteArrayOf((i ushr 8).toByte(), i.toByte()), false)
        }
        for (n in 0 until 10000) c.decode(fourCharString(n))

        c.roundTrips(seed = 20260925, withJunk = true)

        for (data in listOf(null, ByteArray(0), byteArrayOf(65, 65, 65, 65))) {
            for (off in intArrayOf(-2, -1, 0, 1, 4, 5)) {
                for (len in intArrayOf(-2, -1, 0, 1, 2, 3, 4, 5, 7)) {
                    c.compare("decode", arrayOf(bytes, int, int), data, off, len)
                    for (lines in booleanArrayOf(false, true)) {
                        c.compare("encodeToByte", arrayOf(bytes, int, int, bool), data, off, len, lines)
                    }
                }
            }
        }
        for (b in 128 until 256) {
            val data = byteArrayOf(b.toByte(), 65, 65, 65)
            c.compare("decodeFast", arrayOf(bytes), data)
            c.compare("decode", arrayOf(bytes), data)
        }
        assertEquals(11, c.methodsSeen.size, "all 11 MiGBase64 methods must be exercised")

        for (code in 0 until 65536) {
            val s = code.toChar().toString()
            for (name in arrayOf("decode", "decodeFast")) {
                c.compare(name, arrayOf(String::class.java), s)
                c.compare(name, arrayOf(CharArray::class.java), s.toCharArray())
            }
        }
        val random = Random(11927)
        repeat(3000) {
            val length = random.nextInt(161)
            val junk = buildString { repeat(length) { append(JUNK_ALPHABET[random.nextInt(JUNK_ALPHABET.length)]) } }
            c.decode(junk)
            val raw = ByteArray(length).also { random.nextBytes(it) }
            c.compare("decode", arrayOf(bytes), raw)
            c.compare("decodeFast", arrayOf(bytes), raw)
        }

        assertEquals(TOTAL_CALLS, c.total, "corpus size changed")
        assertEquals(TOTAL_MATCHES, c.matches, "match count differs from the baseline in CONTRACTS.md")
        return c.dynamicTests(EXPECTED_MATCHES)
    }

    @ParameterizedTest(name = "decode(\"{0}\")")
    @CsvSource(
        "A, null, null",
        "AA, null, null",
        "AAA, null, null",
        "AA=A, '[0,0]', '[0,0]'",
        "=AAA, '[0,0,0]', '[0,0,0]'",
        "AAAA====, '[0,0]', '[0,0]'",
    )
    fun `padding divergences from CONTRACTS-md`(input: String, expectedSource: String, expectedTarget: String) {
        val params = arrayOf<Class<*>>(String::class.java)
        assertEquals(expectedSource, CorpusHarness.describe(CorpusHarness.invoke(migrated.source, "decode", params, input)))
        assertEquals(expectedTarget, CorpusHarness.describe(CorpusHarness.invoke(migrated.target, "decode", params, input)))
    }

    @TestFactory
    fun `fast decoder reproduces sizing padding and signed lookup boundaries`(): List<DynamicTest> {
        val c = comparison()
        for (text in listOf("", "t", "=", "==", "===", "====", "!!!", "AA=A", "=AAA",
                            "t-W", "R?A", "d\u0000ddA", "0zAA\u00ff=", "\u7070\u7070",
                            "////M\uDEDE", "t-W\r\r\rFt\uDC14A\u0000")) {
            c.compare("decodeFast", arrayOf(String::class.java), text)
            c.compare("decodeFast", arrayOf(CharArray::class.java), text.toCharArray())
            c.compare("decodeFast", arrayOf(bytes), text.toByteArray(Charsets.ISO_8859_1))
        }
        for (text in listOf("jA:tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt=\r\r=\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000")) {
            c.compare("decodeFast", arrayOf(String::class.java), text)
            c.compare("decodeFast", arrayOf(CharArray::class.java), text.toCharArray())
            c.compare("decodeFast", arrayOf(bytes), text.toByteArray(Charsets.ISO_8859_1))
        }
        return c.dynamicTests()
    }

    private fun fourCharString(n: Int): String {
        var v = n
        return buildString {
            repeat(4) {
                append(FOUR_CHAR_ALPHABET[v % FOUR_CHAR_ALPHABET.length])
                v /= FOUR_CHAR_ALPHABET.length
            }
        }
    }

    private companion object {
        const val FOUR_CHAR_ALPHABET = "AB+/=!-_\r\n"
        const val JUNK_ALPHABET = "ABxyz019+/=!-_ \r\nÿĀ"
        // Baseline refreshed 2026-11-14 after fast-decoder specification refinement.
        // Same corpus and exact outcome comparison: all 468,477 calls now match.
        const val TOTAL_CALLS = 468477
        const val TOTAL_MATCHES = 468477

        val FIXED_STRINGS = listOf(
            "", "A", "AA", "AAA", "AAAA", "=", "==", "===", "====", "=====", "A===", "=AAA", "AA=A",
            "AA==", "AAA=", "A=AA", "A=A=", "====AAAA", "AAAA====", "!!!", "!===!",
            "Ā", "AAĀA", "￿", "--__", "QQ==\r\n", "QQ==AAAA", "QQ==!!!", " A A A A ",
        )

        val EXPECTED_MATCHES = mapOf(
            "encodeToByte[class [B, boolean]" to 67250,
            "encodeToChar[class [B, boolean]" to 1714,
            "encodeToString[class [B, boolean]" to 1714,
            "encodeToByte[class [B, int, int, boolean]" to 3750,
            "decode[class java.lang.String]" to 81222,
            "decode[class [C]" to 81222,
            "decode[class [B]" to 18814,
            "decodeFast[class java.lang.String]" to 81222,
            "decodeFast[class [C]" to 81222,
            "decodeFast[class [B]" to 18814,
            "decode[class [B, int, int]" to 31533,
        )
    }
}

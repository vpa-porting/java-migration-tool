package porting.corpus

import org.junit.jupiter.api.BeforeAll
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.TestInstance
import porting.corpus.CorpusHarness.randomPayload
import java.nio.file.Path
import java.util.Base64
import java.util.Random
import kotlin.test.assertEquals
import kotlin.test.assertTrue

/**
 * One functional test per MiGBase64 method: on inputs inside the documented contract the original
 * and the migrated `Api` must return identical results (or throw the same exception class).
 * Inputs outside the contract are covered by [MigBase64CorpusTest].
 */
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class MigBase64MethodsTest {

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

    private val bytes: Class<*> = ByteArray::class.java
    private val chars: Class<*> = CharArray::class.java
    private val string: Class<*> = String::class.java
    private val bool: Class<*> = Boolean::class.javaPrimitiveType!!
    private val int: Class<*> = Int::class.javaPrimitiveType!!

    private val booleans = booleanArrayOf(false, true)

    /** Runs [block] on a fresh comparison and requires every recorded call to match. */
    private fun identical(block: CorpusHarness.Comparison.() -> Unit) {
        val comparison = CorpusHarness.Comparison(migrated.source, migrated.target)
        comparison.block()
        assertTrue(comparison.total > 0, "no calls were made")
        val failures = comparison.perKeyResults().filterValues { it.matches != it.total }
        assertTrue(
            failures.isEmpty(),
            failures.entries.joinToString("\n") { (key, r) -> "$key: ${r.matches}/${r.total}" + r.exampleReport() },
        )
    }

    private fun payloads(seed: Long, count: Int = 300): List<ByteArray> {
        val random = Random(seed)
        return List(count) { randomPayload(random, it) }
    }

    private fun encodings(data: ByteArray) =
        listOf(Base64.getEncoder().encodeToString(data), Base64.getMimeEncoder().encodeToString(data))

    /** Inserts characters that the decoders must skip, never in front of the '=' padding. */
    private fun withIllegal(random: Random, encoded: String, alphabet: String): String {
        val limit = encoded.indexOf('=').let { if (it < 0) encoded.length else it }
        val sb = StringBuilder(encoded)
        repeat(random.nextInt(6)) {
            sb.insert(random.nextInt(limit + 1), alphabet[random.nextInt(alphabet.length)])
        }
        return sb.toString()
    }

    private fun decodeInputs(seed: Long, illegal: String): List<String?> {
        val random = Random(seed)
        val inputs = mutableListOf<String?>(null, "")
        for (data in payloads(seed)) {
            for (encoded in encodings(data)) {
                inputs += encoded
                inputs += withIllegal(random, encoded, illegal)
                inputs += "!$encoded!"
                if (encoded.isNotEmpty()) inputs += encoded.dropLast(1)
                inputs += encoded + "A"
            }
        }
        return inputs
    }

    private fun ByteArray.padded(before: Int, after: Int) =
        ByteArray(before + size + after).also { copyInto(it, before) }

    @Test
    fun `encodeToChar(bytes, boolean)`() = identical {
        for (data in listOf(null) + payloads(1)) for (lines in booleans) compare("encodeToChar", arrayOf(bytes, bool), data, lines)
    }

    @Test
    fun `encodeToByte(bytes, boolean)`() = identical {
        for (data in listOf(null) + payloads(2)) for (lines in booleans) compare("encodeToByte", arrayOf(bytes, bool), data, lines)
    }

    @Test
    fun `encodeToString(bytes, boolean)`() = identical {
        for (data in listOf(null) + payloads(3)) for (lines in booleans) compare("encodeToString", arrayOf(bytes, bool), data, lines)
    }

    @Test
    fun `encodeToByte(bytes, int, int, boolean)`() = identical {
        val params = arrayOf(bytes, int, int, bool)
        for (lines in booleans) {
            compare("encodeToByte", params, null, 0, 0, lines)
            compare("encodeToByte", params, null, 5, 7, lines)
            for (data in payloads(4)) {
                val padded = data.padded(before = 3, after = 4)
                compare("encodeToByte", params, padded, 3, data.size, lines)
                compare("encodeToByte", params, padded, 0, padded.size, lines)
                compare("encodeToByte", params, padded, 5, 0, lines)
                if (data.size > 2) compare("encodeToByte", params, padded, 4, data.size - 2, lines)
            }
        }
    }

    @Test
    fun `decode(String)`() = identical {
        for (s in decodeInputs(5, "!?-_ \t.,;:#\r\nÿ ")) compare("decode", arrayOf(string), s)
    }

    @Test
    fun `decode(chars)`() = identical {
        for (s in decodeInputs(6, "!?-_ \t.,;:#\r\nÿ ")) compare("decode", arrayOf(chars), s?.toCharArray())
    }

    @Test
    fun `decode(bytes)`() = identical {
        compare("decode", arrayOf(bytes), null)
        for (s in decodeInputs(7, "!?-_ \t.,;:#\r\nÿ ").filterNotNull()) {
            compare("decode", arrayOf(bytes), s.toByteArray(Charsets.ISO_8859_1))
        }
    }

    @Test
    fun `decode(bytes, int, int)`() = identical {
        val params = arrayOf(bytes, int, int)
        compare("decode", params, null, 0, 0)
        compare("decode", params, null, 3, 0)
        compare("decode", params, null, 0, 4)
        for (s in decodeInputs(8, "!?-_ \t.,;:#\r\nÿ ").filterNotNull()) {
            val raw = s.toByteArray(Charsets.ISO_8859_1)
            compare("decode", params, raw, 0, raw.size)
            compare("decode", params, raw.padded(before = 2, after = 3), 2, raw.size)
            compare("decode", params, raw, raw.size, 0)
        }
    }

    /** decodeFast is only specified for well-formed input: one line or 76-character CRLF lines. */
    private fun wellFormed(seed: Long): List<String> =
        payloads(seed).flatMap { encodings(it) } + listOf("QQ==", "QUJD", "QUJDRA==")

    @Test
    fun `decodeFast(String)`() = identical {
        compare("decodeFast", arrayOf(string), "")
        compare("decodeFast", arrayOf(string), null)
        for (s in wellFormed(9)) compare("decodeFast", arrayOf(string), s)
    }

    @Test
    fun `decodeFast(chars)`() = identical {
        compare("decodeFast", arrayOf(chars), CharArray(0))
        compare("decodeFast", arrayOf(chars), null)
        for (s in wellFormed(10)) compare("decodeFast", arrayOf(chars), s.toCharArray())
    }

    @Test
    fun `decodeFast(bytes)`() = identical {
        compare("decodeFast", arrayOf(bytes), ByteArray(0))
        compare("decodeFast", arrayOf(bytes), null)
        for (s in wellFormed(11)) compare("decodeFast", arrayOf(bytes), s.toByteArray(Charsets.ISO_8859_1))
    }

    @Test
    fun `every method of the demo Api is covered`() {
        val declared = migrated.source.declaredMethods.map { it.name + it.parameterTypes.toList() }.toSet()
        assertEquals(11, declared.size)
    }
}

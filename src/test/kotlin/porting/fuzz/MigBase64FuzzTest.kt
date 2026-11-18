package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import porting.fuzz.FuzzSubjects.compare

/**
 * Differential fuzzing of MiGBase64 2.2 against the migrated `java.util.Base64` code. The fuzzer is
 * coverage-guided (over the original library and the migrated code); the same arguments go to both
 * sides and [DiffRecorder] records where they disagree. Targets never fail on a divergence (unless
 * `-Dfuzz.strict=true`): their product is the report in build/fuzz-report.
 */
class MigBase64FuzzTest {
    private val subject get() = FuzzSubjects.base64
    private val bytes = ByteArray::class.java
    private val chars = CharArray::class.java
    private val string = String::class.java
    private val bool = Boolean::class.javaPrimitiveType!!
    private val int = Int::class.javaPrimitiveType!!

    /** null about once in 16 inputs, otherwise 0..600 bytes. */
    private fun FuzzedDataProvider.payload(): ByteArray? =
        if (consumeInt(0, 15) == 0) null else consumeBytes(consumeInt(0, 600))

    /** Text biased toward the base64 alphabet (valid and almost valid input), with arbitrary chars mixed in. */
    private fun FuzzedDataProvider.text(): String? {
        if (consumeInt(0, 15) == 0) return null
        val alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\r\n -_"
        return buildString {
            repeat(consumeInt(0, 300)) {
                append(if (consumeBoolean()) alphabet[consumeInt(0, alphabet.length - 1)] else consumeChar())
            }
        }
    }

    @FuzzTest
    fun encode(data: FuzzedDataProvider) = track {
        val input = data.payload()
        val lines = data.consumeBoolean()
        val f = Features.bytes("data", input) + "lines=$lines"
        for (name in arrayOf("encodeToByte", "encodeToChar", "encodeToString")) {
            compare(subject, name, arrayOf(bytes, bool), f) { arrayOf(input?.clone(), lines) }
        }
    }

    /** Offset and length are unconstrained on purpose: out-of-range slices are a likely divergence. */
    @FuzzTest
    fun encodeSlice(data: FuzzedDataProvider) = track {
        val input = data.payload()
        val off = data.consumeInt(-8, 700)
        val len = data.consumeInt(-8, 700)
        val lines = data.consumeBoolean()
        val f = Features.bytes("data", input) + Features.range(off, len, input?.size)
        compare(subject, "encodeToByte", arrayOf(bytes, int, int, bool), f) { arrayOf(input?.clone(), off, len, lines) }
    }

    /** Valid slices, including empty slices and MIME line boundaries, without rejection sampling. */
    @FuzzTest
    fun encodeSliceInContract(data: FuzzedDataProvider) = track {
        // Consume controls first so a short payload cannot exhaust them and
        // collapse every generated slice to offset=length=0.
        val offsetHint = data.consumeInt(0, 600)
        val lengthHint = data.consumeInt(0, 600)
        val lines = data.consumeBoolean()
        val input = data.consumeBytes(data.consumeInt(0, 600))
        val off = offsetHint % (input.size + 1)
        val len = lengthHint % (input.size - off + 1)
        val f = Features.bytes("data", input) + Features.range(off, len, input.size) + "lines=$lines"
        compare(subject, "encodeToByte", arrayOf(bytes, int, int, bool), f) { arrayOf(input.clone(), off, len, lines) }
    }

    /** Valid encoded slices surrounded by arbitrary bytes that must never affect decoding. */
    @FuzzTest
    fun decodeSliceInContract(data: FuzzedDataProvider) = track {
        val mime = data.consumeBoolean()
        val prefix = data.consumeBytes(data.consumeInt(0, 16))
        val suffix = data.consumeBytes(data.consumeInt(0, 16))
        val payload = data.consumeBytes(data.consumeInt(0, 400))
        val encoded = (if (mime) java.util.Base64.getMimeEncoder() else java.util.Base64.getEncoder()).encode(payload)
        val input = prefix + encoded + suffix
        val f = Features.bytes("data", input) + Features.range(prefix.size, encoded.size, input.size) +
            "encoding=${if (mime) "mime" else "basic"}"
        compare(subject, "decode", arrayOf(bytes, int, int), f) { arrayOf(input.clone(), prefix.size, encoded.size) }
    }

    @FuzzTest
    fun decodeText(data: FuzzedDataProvider) = track {
        val s = data.text()
        val f = Features.base64Text("text", s)
        for (name in arrayOf("decode", "decodeFast")) {
            compare(subject, name, arrayOf(string), f + "api=$name") { arrayOf(s) }
            compare(subject, name, arrayOf(chars), f + "api=$name") { arrayOf(s?.toCharArray()) }
        }
    }

    @FuzzTest
    fun decodeBytes(data: FuzzedDataProvider) = track {
        val latin1 = data.text()?.toByteArray(Charsets.ISO_8859_1) // what the byte[] overloads actually receive
        val f = Features.base64Text("text", latin1?.let { String(it, Charsets.ISO_8859_1) })
        for (name in arrayOf("decode", "decodeFast")) {
            compare(subject, name, arrayOf(bytes), f + "api=$name") { arrayOf(latin1?.clone()) }
        }
    }

    @FuzzTest
    fun decodeSlice(data: FuzzedDataProvider) = track {
        val latin1 = data.text()?.toByteArray(Charsets.ISO_8859_1)
        val off = data.consumeInt(-8, 320)
        val len = data.consumeInt(-8, 320)
        val f = Features.base64Text("text", latin1?.let { String(it, Charsets.ISO_8859_1) }) + Features.range(off, len, latin1?.size)
        compare(subject, "decode", arrayOf(bytes, int, int), f) { arrayOf(latin1?.clone(), off, len) }
    }

    /**
     * decodeFast inside its documented preconditions: one line, or 76-character CRLF lines, with no
     * illegal characters inside the encoded text; illegal characters are allowed before and after it
     * (before it only for the one-line form: the original looks for the first CRLF at the absolute
     * index 76, so a prefix shifts it - a separate defect of the original, outside the contract).
     * Any divergence here is a bug inside the contract.
     */
    @FuzzTest
    fun decodeFastInContract(data: FuzzedDataProvider) = track {
        val payload = data.consumeBytes(data.consumeInt(1, 400))
        val mime = data.consumeBoolean()
        val body = if (mime) java.util.Base64.getMimeEncoder().encodeToString(payload)
        else java.util.Base64.getEncoder().encodeToString(payload)
        val junk = " \t\r\n#!@$%^&*()[]{}<>,.;:?~`|\\\"'"
        fun junk(n: Int) = buildString { repeat(n) { append(junk[data.consumeInt(0, junk.length - 1)]) } }
        val text = (if (mime) "" else junk(data.consumeInt(0, 4))) + body + junk(data.consumeInt(0, 4))
        val f = Features.base64Text("text", text) + "form=${if (mime) "mime" else "single line"}"
        compare(subject, "decodeFast", arrayOf(string), f) { arrayOf(text) }
        compare(subject, "decodeFast", arrayOf(chars), f) { arrayOf(text.toCharArray()) }
        compare(subject, "decodeFast", arrayOf(bytes), f) { arrayOf(text.toByteArray(Charsets.ISO_8859_1)) }
    }

    /** Valid encodings of arbitrary payloads: any divergence here is a bug inside the contract. */
    @FuzzTest
    fun roundTrip(data: FuzzedDataProvider) = track {
        val payload = data.consumeBytes(data.consumeInt(0, 600))
        for ((kind, text) in listOf(
            "basic" to java.util.Base64.getEncoder().encodeToString(payload),
            "mime" to java.util.Base64.getMimeEncoder().encodeToString(payload),
        )) {
            val f = Features.base64Text("text", text) + "encoding=$kind"
            for (name in arrayOf("decode", "decodeFast")) {
                compare(subject, name, arrayOf(string), f + "api=$name") { arrayOf(text) }
                compare(subject, name, arrayOf(chars), f + "api=$name") { arrayOf(text.toCharArray()) }
                compare(subject, name, arrayOf(bytes), f + "api=$name") { arrayOf(text.toByteArray(Charsets.ISO_8859_1)) }
            }
        }
    }
}

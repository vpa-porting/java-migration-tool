package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import net.lbruun.hexutils.Hex
import porting.corpus.CorpusHarness
import porting.fuzz.FuzzSubjects.compare

/**
 * Differential fuzzing of hexutils 1.0.0 against the migrated `java.util.HexFormat` code; see
 * [MigBase64FuzzTest] for the setup. Delimiters include null, empty, multi-character and hex-digit
 * ones, which is where the two libraries' parsers and validators are most likely to disagree.
 */
class HexutilsFuzzTest {
    private val subject get() = FuzzSubjects.hex
    private val bytes = ByteArray::class.java
    private val chars = CharArray::class.java
    private val string = String::class.java
    private val charSequence = CharSequence::class.java
    private val hexCase = Hex.HexCase::class.java
    private val byte = Byte::class.javaPrimitiveType!!
    private val char = Char::class.javaPrimitiveType!!

    private fun FuzzedDataProvider.payload(): ByteArray? =
        if (consumeInt(0, 15) == 0) null else consumeBytes(consumeInt(0, 200))

    private fun FuzzedDataProvider.caseType(): Hex.HexCase = Hex.HexCase.values()[consumeInt(0, 1)]

    private fun FuzzedDataProvider.delimiter(): String? = when (consumeInt(0, 7)) {
        0 -> null
        1 -> ""
        2 -> ":"
        3 -> "-"
        4 -> "||"
        5 -> "a"
        else -> consumeString(consumeInt(1, 3))
    }

    private fun FuzzedDataProvider.hexLikeText(): String? {
        if (consumeInt(0, 15) == 0) return null
        val alphabet = "0123456789abcdefABCDEF:-| \t"
        return buildString {
            repeat(consumeInt(0, 120)) {
                append(if (consumeInt(0, 9) != 0) alphabet[consumeInt(0, alphabet.length - 1)] else consumeChar())
            }
        }
    }

    @FuzzTest
    fun encode(data: FuzzedDataProvider) = track {
        val input = data.payload()
        val caseType = data.caseType()
        val delim = data.delimiter()
        val f = Features.bytes("data", input) + Features.delimiter(delim) + "case=$caseType"
        compare(subject, "bytesToHexStr", arrayOf(bytes, hexCase), f) { arrayOf(input?.clone(), caseType) }
        compare(subject, "bytesToHexStr", arrayOf(bytes, hexCase, string), f) { arrayOf(input?.clone(), caseType, delim) }
        compare(subject, "bytesToHex", arrayOf(bytes, hexCase, string), f) { arrayOf(input?.clone(), caseType, delim) }
    }

    @FuzzTest
    fun encodeByte(data: FuzzedDataProvider) = track {
        val b = data.consumeByte()
        val caseType = data.caseType()
        compare(subject, "byteToHex", arrayOf(byte, hexCase), listOf("case=$caseType")) { arrayOf(b, caseType) }
    }

    @FuzzTest
    fun decode(data: FuzzedDataProvider) = track {
        val text = data.hexLikeText()
        val delim = data.delimiter()
        val f = Features.hexText(text) + Features.delimiter(delim)
        compare(subject, "hexStrToBytes", arrayOf(charSequence), f) { arrayOf(text) }
        compare(subject, "hexStrToBytes", arrayOf(charSequence, string), f) { arrayOf(text, delim) }
        compare(subject, "hexStrToBytes", arrayOf(chars), f) { arrayOf(text?.toCharArray()) }
        compare(subject, "hexStrToBytes", arrayOf(chars, string), f) { arrayOf(text?.toCharArray(), delim) }
    }

    @FuzzTest
    fun isHexChar(data: FuzzedDataProvider) = track {
        val c = data.consumeChar()
        compare(subject, "isHexChar", arrayOf(char), listOf(if (c.code > 255) "char > U+00FF" else "char <= U+00FF")) { arrayOf(c) }
    }

    /**
     * The `StringBuilder` overloads modify their argument, so the observable result is the builder's content afterwards,
     * whether the returned builder is the one passed in, and the exception class. [prefix] null passes a null builder.
     */
    private fun compareBuilders(
        types: Array<Class<*>>, features: List<String>, input: ByteArray?, caseType: Hex.HexCase, delim: String?,
        prefix: String?, withDelim: Boolean,
    ) {
        fun run(clazz: Class<*>): CorpusHarness.Outcome {
            val sb = prefix?.let { StringBuilder(it) }
            val args = if (withDelim) arrayOf(input?.clone(), caseType, delim, sb) else arrayOf(input?.clone(), caseType, sb)
            return when (val r = CorpusHarness.invoke(clazz, "bytesToHexStr", types, *args)) {
                is CorpusHarness.Value -> CorpusHarness.Value("returned the argument=${r.value === sb}, builder=\"$sb\"")
                is CorpusHarness.Thrown ->
                    if (sb == null || sb.toString() == prefix) r else CorpusHarness.Value("throws ${r.exceptionClass.simpleName}, builder=\"$sb\"")
            }
        }
        val logged = listOf(input, caseType, delim, prefix)
        DiffRecorder.observe("bytesToHexStr(${types.joinToString { it.simpleName }})", features, logged, run(subject.source), run(subject.target))
    }

    @FuzzTest
    fun appendToBuilder(data: FuzzedDataProvider) = track {
        val input = data.payload()
        val caseType = data.caseType()
        val delim = data.delimiter()
        val prefix = if (data.consumeInt(0, 9) == 0) null else data.consumeString(data.consumeInt(0, 4))
        val f = Features.bytes("data", input) + Features.delimiter(delim) + (if (prefix == null) "builder=null" else "builder given")
        compareBuilders(arrayOf(bytes, hexCase, string, StringBuilder::class.java), f, input, caseType, delim, prefix, withDelim = true)
        compareBuilders(arrayOf(bytes, hexCase, StringBuilder::class.java), f, input, caseType, delim, prefix, withDelim = false)
    }

    @FuzzTest
    fun isHexStr(data: FuzzedDataProvider) = track {
        val text = data.hexLikeText()
        compare(subject, "isHexStr", arrayOf(string), Features.hexText(text)) { arrayOf(text) }
    }

    /** Mostly hex digits (valid pairs), sometimes any char: the digit pair is where the narrowing cast matters. */
    @FuzzTest
    fun hexCharToByte(data: FuzzedDataProvider) = track {
        val alphabet = "0123456789abcdefABCDEF"
        fun next() = if (data.consumeInt(0, 5) != 0) alphabet[data.consumeInt(0, alphabet.length - 1)] else data.consumeChar()
        val c1 = next()
        val c2 = next()
        val f = listOf(if (c1.code > 255 || c2.code > 255) "char > U+00FF" else "chars <= U+00FF") +
            (if (c1.isHex() && c2.isHex()) "both hex" else "not hex")
        compare(subject, "hexCharToByte", arrayOf(char, char), f) { arrayOf(c1, c2) }
    }

    private fun Char.isHex() = this in '0'..'9' || this in 'a'..'f' || this in 'A'..'F'

    /** The original's own encoding fed back into the decoder: valid input, so divergence is a bug. */
    @FuzzTest
    fun roundTrip(data: FuzzedDataProvider) = track {
        val payload = data.consumeBytes(data.consumeInt(0, 200))
        val caseType = data.caseType()
        val delim = data.delimiter()
        // The original rejects delimiters it cannot encode with; those inputs are not valid round trips.
        val text = try {
            if (delim == null) Hex.bytesToHexStr(payload, caseType) else Hex.bytesToHexStr(payload, caseType, delim)
        } catch (e: IllegalArgumentException) {
            return@track
        }
        val f = Features.hexText(text) + Features.delimiter(delim)
        compare(subject, "hexStrToBytes", arrayOf(charSequence, string), f) { arrayOf(text, delim) }
        compare(subject, "hexStrToBytes", arrayOf(charSequence, string), f + "input=StringBuilder") {
            arrayOf(StringBuilder(text), delim)
        }
        compare(subject, "hexStrToBytes", arrayOf(chars, string), f) { arrayOf(text.toCharArray(), delim) }
        if (delim.isNullOrEmpty()) {
            compare(subject, "hexStrToBytes", arrayOf(charSequence), f) { arrayOf(text) }
            compare(subject, "hexStrToBytes", arrayOf(chars), f) { arrayOf(text.toCharArray()) }
        }
    }
}

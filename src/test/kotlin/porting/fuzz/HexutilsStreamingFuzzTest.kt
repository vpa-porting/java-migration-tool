package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import net.lbruun.hexutils.Hex
import porting.fuzz.FileSandbox.compareFiles
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.nio.file.OpenOption
import java.nio.file.StandardOpenOption

/**
 * Differential fuzzing of the file-to-file streaming methods of hexutils 1.0.0 against the migrated
 * `java.nio.file.Files` / `java.util.HexFormat` code; the observable result is the exception class plus the
 * output file ([FileSandbox]). Input files are the original's own output (valid), hand-made hex-like text
 * and arbitrary bytes; output options include modes that keep or do not truncate an existing file.
 */
class HexutilsStreamingFuzzTest {
    private val subject get() = FuzzSubjects.hex
    private val string = String::class.java

    private fun FuzzedDataProvider.delimiter(): String? = when (consumeInt(0, 7)) {
        0 -> null
        1 -> ""
        2 -> ":"
        3 -> "-"
        4 -> "||"
        5 -> "a"
        else -> consumeString(consumeInt(1, 3))
    }

    /** Output-file preconditions: a stale file with other content, and the open options handed to the library. */
    private class OutputSetup(val before: ByteArray?, val options: Array<OpenOption>) {
        fun describe() = "options=${options.joinToString(prefix = "[", postfix = "]") { it.toString() }} before=" +
            (before?.let { "${it.size} bytes" } ?: "absent")
    }

    private fun FuzzedDataProvider.outputSetup(): OutputSetup {
        val before = if (consumeInt(0, 3) == 0) consumeBytes(consumeInt(0, 8)) else null
        val options: Array<OpenOption> = when (consumeInt(0, 9)) {
            0 -> arrayOf(StandardOpenOption.APPEND)
            1 -> arrayOf(StandardOpenOption.CREATE_NEW)
            2 -> arrayOf(StandardOpenOption.WRITE, StandardOpenOption.CREATE)
            else -> emptyArray()
        }
        return OutputSetup(before, options)
    }

    /** What the original's own encoder writes to a stream, i.e. a well-formed hex file (maybe wrapped, maybe delimited). */
    private val privateEncoder = Hex::class.java.getDeclaredMethod(
        "bytesToHexStreaming", java.io.InputStream::class.java, java.io.OutputStream::class.java,
        Hex.HexCase::class.java, String::class.java, Int::class.javaPrimitiveType,
    ).also { it.isAccessible = true }

    /** What the original's own encoder writes to a stream, i.e. a well-formed hex file (maybe wrapped, maybe delimited). */
    private fun encodedFile(payload: ByteArray, caseType: Hex.HexCase, delim: String?, maxChars: Int): ByteArray? = try {
        val os = ByteArrayOutputStream()
        privateEncoder.invoke(null, ByteArrayInputStream(payload), os, caseType, delim, maxChars)
        os.toByteArray()
    } catch (e: java.lang.reflect.InvocationTargetException) {
        null // delimiter the original refuses to encode with
    }

    private fun FuzzedDataProvider.hexLikeBytes(): ByteArray {
        val alphabet = "0123456789abcdefABCDEF:-| \t\r\n"
        return buildString {
            repeat(consumeInt(0, 120)) {
                append(if (consumeInt(0, 9) != 0) alphabet[consumeInt(0, alphabet.length - 1)] else consumeChar())
            }
        }.toByteArray(Charsets.ISO_8859_1)
    }

    private fun fileFeatures(content: ByteArray): List<String> {
        val text = String(content, Charsets.ISO_8859_1)
        return Features.hexText(text) + buildList {
            if (content.any { it < 0 }) add("file has byte > 127")
            if (text.any { it == '\n' || it == '\r' }) add("file has CR/LF")
            if (text.count { it in '0'..'9' || it in 'a'..'f' || it in 'A'..'F' } % 2 != 0) add("odd number of hex digits")
        }
    }

    @FuzzTest
    fun decodeFile(data: FuzzedDataProvider) = track {
        val delim = data.delimiter()
        val content = when (data.consumeInt(0, 3)) {
            0 -> data.consumeBytes(data.consumeInt(0, 60))
            else -> data.hexLikeBytes()
        }
        decodeFileCompare(content, delim, data.outputSetup())
    }

    /** The original's own streaming encoder output fed to the decoder: valid input, so divergence is a bug. */
    @FuzzTest
    fun decodeFileRoundTrip(data: FuzzedDataProvider) = track {
        val payload = data.consumeBytes(data.consumeInt(0, 120))
        val caseType = Hex.HexCase.values()[data.consumeInt(0, 1)]
        val delim = data.delimiter()
        val maxChars = if (data.consumeBoolean()) -1 else data.consumeInt(0, 40)
        val content = encodedFile(payload, caseType, delim, maxChars) ?: return@track
        decodeFileCompare(content, delim, data.outputSetup())
    }

    private fun decodeFileCompare(content: ByteArray, delim: String?, setup: OutputSetup) {
        val features = fileFeatures(content) + Features.delimiter(delim) +
            (if (setup.before != null) "output file exists" else "output file absent") +
            (if (setup.options.isEmpty()) "default options" else "options=${setup.options.joinToString { it.toString() }}")
        compareFiles(
            subject, "hexToBytesStreaming",
            arrayOf(FileSandbox.pathClass, FileSandbox.pathClass, string, FileSandbox.optionsClass),
            features, content, setup.before,
            listOf(String(content, Charsets.ISO_8859_1), delim, setup.describe()),
        ) { input, output -> arrayOf(input, output, delim, setup.options) }
    }
}

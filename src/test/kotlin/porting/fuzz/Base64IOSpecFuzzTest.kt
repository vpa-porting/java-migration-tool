package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import com.migcomponents.migbase64.Base64IO
import porting.corpus.CorpusHarness.Value
import porting.spec.Base64IOChecks
import porting.spec.Base64IOChecks.Case
import porting.spec.Base64IOModel

/** Original Base64IO versus its operational specification, not migrated code. */
open class Base64IOSpecFuzzTest {
    protected open val verificationKind = "spec-conformance"
    protected open val checkConstructor = true
    protected open fun runCandidate(test: Case) = Base64IOChecks.run(true, test)
    private fun compare(test: Case) {
        val source = Base64IOChecks.run(false, test)
        val model = runCandidate(test)
        DiffRecorder.observe("Base64IO.encode(InputStream,OutputStream,boolean)",
            listOf("verification=$verificationKind", "lines=${test.lines()}", "size.mod3=${test.data().size % 3}",
                if (test.data().size < window) "input below window" else "input spans window"),
            listOf(test.data(), test.toString()), Value(source), Value(model))
        check(source == model) { "$test\noriginal=$source\nspecification=$model" }
        if (source.exceptionClass == null)
            check(source.output.contentEquals(Base64IOChecks.successfulOutput(test.data(), test.lines()))) {
                "Whole-input output oracle disagrees: $test"
            }
        check(source.events.none { it.contains("close") || it.contains("flush") }) { "Encoder took ownership: $test" }
    }

    @FuzzTest
    fun encode(data: FuzzedDataProvider) = track {
        if (encodeSeeded.add(javaClass.name)) {
            if (checkConstructor) {
            val first = Base64IO()
            val second = Base64IO()
            val construction = first.javaClass == Base64IO::class.java && first !== second
            DiffRecorder.observe("Base64IO()", listOf("verification=public-construction"), emptyList(), Value(construction), Value(true))
            check(construction)
            }
            for (size in intArrayOf(0, 1, 2, 3, 56, 57, 58, 59, 60, 113, 114, 115, 116, 117,
                window - 1, window, window + 1, window + 2, 2 * window + 1))
                for (lines in listOf(false, true)) compare(Case.normal(payload(size, byteArrayOf()), lines, 4093))
        }
        val lines = data.consumeBoolean()
        val size = when (data.consumeInt(0, 7)) {
            0 -> window + data.consumeInt(-2, 2)
            1 -> 2 * window + data.consumeInt(-2, 2)
            else -> data.consumeInt(0, 512)
        }
        val chunk = if (size > 512) data.consumeInt(1024, window) else chunks[data.consumeInt(0, chunks.lastIndex)]
        val defaultRead = size <= 512 && data.consumeBoolean()
        val defaultWrite = size <= 512 && data.consumeBoolean()
        val zeros = data.consumeInt(0, 2)
        val input = payload(size, data.consumeBytes(64))
        compare(Case(input, lines, chunk, defaultRead, zeros, -1, false, -1, -1, defaultWrite, false, false))
    }

    @FuzzTest
    fun failures(data: FuzzedDataProvider) = track {
        if (failuresSeeded.add(javaClass.name)) {
            for (size in listOf(0, 1, 58, 120)) {
                val input = payload(size, byteArrayOf())
                for (readAt in listOf(-1, 0, 1, size)) for (nullOutput in listOf(false, true))
                    compare(Case(input, true, 7, false, 0, readAt, true, -1, -1, false, false, nullOutput))
                for (writeAt in listOf(0, 1, 75, 76, 77, 78, 80))
                    compare(Case(input, true, 7, false, 0, -1, false, writeAt, -1, true, false, false))
                compare(Case(input, false, 7, false, 0, -1, false, -1, 0, false, false, false))
            }
            compare(Case(payload(window + 12, byteArrayOf()), true, window, false, 0,
                window + 3, true, -1, -1, false, false, false))
        }
        val large = data.consumeInt(0, 7) == 0
        val size = if (large) window + data.consumeInt(0, 60) else data.consumeInt(0, 256)
        val chunk = if (large) data.consumeInt(1024, window) else chunks[data.consumeInt(0, chunks.lastIndex)]
        val lines = data.consumeBoolean()
        val defaultRead = !large && data.consumeBoolean()
        val defaultWrite = !large && data.consumeBoolean()
        val zeros = data.consumeInt(0, 2)
        val readAt = if (data.consumeBoolean()) -1 else data.consumeInt(0, size)
        val partial = data.consumeBoolean()
        val writeAt = if (data.consumeBoolean()) -1 else data.consumeInt(0, 4 * ((size + 2) / 3) + 100)
        val writeCall = if (data.consumeBoolean()) -1 else data.consumeInt(0, 5)
        val nullInput = data.consumeInt(0, 15) == 0
        val nullOutput = data.consumeInt(0, 7) == 0
        val input = payload(size, data.consumeBytes(64))
        compare(Case(input, lines, chunk, defaultRead, zeros, readAt, partial,
            writeAt, writeCall, defaultWrite, nullInput, nullOutput))
    }

    companion object {
        private const val window = Base64IOModel.INPUT_WINDOW
        private val chunks = intArrayOf(1, 2, 3, 7, 57, 4096, window)
        private val encodeSeeded = mutableSetOf<String>()
        private val failuresSeeded = mutableSetOf<String>()
        private fun payload(size: Int, pattern: ByteArray) = ByteArray(size) { i ->
            if (pattern.isEmpty()) (i * 137 + size).toByte() else pattern[i % pattern.size]
        }
    }
}

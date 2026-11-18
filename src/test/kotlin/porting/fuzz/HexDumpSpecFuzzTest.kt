package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import net.lbruun.hexutils.Hex

/** Original HexDump versus the independent block-layout specification. */
open class HexDumpSpecFuzzTest {
    protected open val candidate: Class<*> get() = porting.spec.HexDumpModel::class.java
    protected open val kind = "spec-conformance"
    private val bytes = ByteArray::class.java
    private val case = Hex.HexCase::class.java
    private val int = Int::class.javaPrimitiveType!!
    private fun values(input: ByteArray?, c: Hex.HexCase?, width: Int, indent: Int, sep: String?) {
        val logged = listOf(input, c, width, indent, sep)
        SpecChecks.dumpValue("prettyPrint", arrayOf(bytes, case, int, int), logged, candidate, kind) { arrayOf(input?.clone(), c, width, indent) }
        SpecChecks.dumpValue("prettyPrintStr", arrayOf(bytes, case, int, int, String::class.java), logged, candidate, kind) { arrayOf(input?.clone(), c, width, indent, sep) }
        SpecChecks.dumpValue("prettyPrintStr", arrayOf(bytes, case, int, int), logged, candidate, kind) { arrayOf(input?.clone(), c, width, indent) }
        for (name in listOf("prettyPrint", "prettyPrintStr"))
            SpecChecks.dumpValue(name, arrayOf(bytes), listOf(input), candidate, kind) { arrayOf(input?.clone()) }
    }
    @FuzzTest
    fun values(data: FuzzedDataProvider) = track {
        if (valuesSeeded.add(javaClass.name)) {
            for (input in listOf(null, byteArrayOf(), byteArrayOf(0, 31, 32, 65, 126, 127, -1)))
                for (width in listOf(-2, 0, 1, 4, 16)) for (indent in listOf(-1, 0, 2)) values(input, null, width, indent, null)
        }
        val width = widths[data.consumeInt(0, widths.lastIndex)]
        val indent = data.consumeInt(-1, 4)
        val c = listOf(null, Hex.HexCase.LOWER, Hex.HexCase.UPPER)[data.consumeInt(0, 2)]
        val separator = listOf(null, "", "\n", "\r\n", "|")[data.consumeInt(0, 4)]
        val input = if (data.consumeInt(0, 7) == 0) null else data.consumeBytes(256)
        values(input, c, width, indent, separator)
    }
    @FuzzTest
    fun print(data: FuzzedDataProvider) = track {
        if (printSeeded.add(javaClass.name)) {
            for (input in listOf(null, byteArrayOf(), byteArrayOf(0, 31, 32, 65, 126, 127, -1)))
                for (nullOutput in listOf(false, true)) for (defaults in listOf(false, true))
                    SpecChecks.dumpPrint(input, null, 4, 2, nullOutput, defaults, -1, false, candidate, kind)
        }
        val width = widths[data.consumeInt(0, widths.lastIndex)]
        val indent = data.consumeInt(-1, 4)
        val c = listOf(null, Hex.HexCase.LOWER, Hex.HexCase.UPPER)[data.consumeInt(0, 2)]
        val defaults = data.consumeBoolean()
        val nullOutput = data.consumeBoolean()
        val autoFlush = data.consumeBoolean()
        val failAt = data.consumeInt(-1, 100)
        val input = if (data.consumeInt(0, 7) == 0) null else data.consumeBytes(128)
        SpecChecks.dumpPrint(input, c, width, indent, nullOutput, defaults, failAt, autoFlush, candidate, kind)
    }
    companion object {
        private val widths = intArrayOf(-8, -2, -1, 0, 1, 2, 7, 16, 31, 32, 1 shl 29)
        private val valuesSeeded = mutableSetOf<String>()
        private val printSeeded = mutableSetOf<String>()
    }
}

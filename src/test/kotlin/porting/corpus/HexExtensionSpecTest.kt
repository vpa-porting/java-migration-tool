package porting.corpus

import net.lbruun.hexutils.Hex
import net.lbruun.hexutils.HexHarmless
import org.junit.jupiter.api.Test
import porting.fuzz.SpecChecks
import java.util.Locale
import kotlin.test.*

/** Tests of operational specifications, separate from the generated-code migration tests. */
class HexExtensionSpecTest {
    @Test fun `harmless mutation identity and failure prefix are part of the contract`() {
        val inputs = listOf(null, "", "0123456789abcdef", "gh2k456789mbcdtf", "g", "01!ae", "gh!kt", "!gh", "gh!", "A", "\u0000", "\ud800", "\uffff")
        for (s in inputs) {
            for (name in listOf("convertToHarmless", "convertFromHarmless", "hexStrHarmlessToBytes"))
                SpecChecks.harmless(name, arrayOf(CharArray::class.java), listOf(s)) { arrayOf(s?.toCharArray()) }
            SpecChecks.harmless("hexStrHarmlessToBytes", arrayOf(CharSequence::class.java), listOf(s)) { arrayOf(s) }
            SpecChecks.harmless("hexStrHarmlessToBytes", arrayOf(CharSequence::class.java), listOf(s, "StringBuilder")) { arrayOf(s?.let(::StringBuilder)) }
        }
        val to = "01!ae".toCharArray()
        assertFailsWith<IllegalArgumentException> { HexHarmless.convertToHarmless(to) }
        assertEquals("gh!ae", String(to))
        val from = "gh!kt".toCharArray()
        assertFailsWith<IllegalArgumentException> { HexHarmless.convertFromHarmless(from) }
        assertEquals("01!kt", String(from))
        val odd = "ghk".toCharArray()
        assertFailsWith<IllegalArgumentException> { HexHarmless.hexStrHarmlessToBytes(odd) }
        assertEquals("013", String(odd))
        val empty = charArrayOf()
        assertSame(empty, HexHarmless.convertToHarmless(empty))
    }

    @Test fun `mutable public alphabet does not define the conversion map`() {
        val saved = HexHarmless.HARMLESS_HEX_CHARS.clone()
        try {
            HexHarmless.HARMLESS_HEX_CHARS.fill('!')
            assertEquals('g', HexHarmless.convertToHarmless('0'))
            SpecChecks.harmless("convertToHarmless", arrayOf(CharArray::class.java), listOf("013ae")) { arrayOf("013ae".toCharArray()) }
        } finally { saved.copyInto(HexHarmless.HARMLESS_HEX_CHARS) }
    }

    @Test fun `dump validation layout and capacity overflow agree`() {
        val bytes = ByteArray::class.java
        val case = Hex.HexCase::class.java
        val int = Int::class.javaPrimitiveType!!
        val samples = listOf(null, byteArrayOf(), ByteArray(17) { (it * 17).toByte() })
        for (input in samples) for (width in listOf(-2, -1, 0, 1, 2, 16, 1 shl 29))
            for (indent in listOf(-1, 0, 2)) for (c in listOf(null, Hex.HexCase.LOWER, Hex.HexCase.UPPER)) {
                val log = listOf(input, width, indent, c)
                SpecChecks.dumpValue("prettyPrint", arrayOf(bytes, case, int, int), log) { arrayOf(input?.clone(), c, width, indent) }
                for (sep in listOf(null, "", "\r\n"))
                    SpecChecks.dumpValue("prettyPrintStr", arrayOf(bytes, case, int, int, String::class.java), log + sep) { arrayOf(input?.clone(), c, width, indent, sep) }
            }
    }

    @Test fun `dump counter uses FORMAT locale and grows at ten thousand bytes`() {
        val saved = Locale.getDefault(Locale.Category.FORMAT)
        try {
            for (locale in listOf(Locale.US, Locale.FRANCE, Locale.forLanguageTag("ar-EG"))) {
                Locale.setDefault(Locale.Category.FORMAT, locale)
                for (size in listOf(9999, 10000)) {
                    val input = ByteArray(size) { it.toByte() }
                    SpecChecks.dumpValue("prettyPrintStr", arrayOf(ByteArray::class.java, Hex.HexCase::class.java,
                        Int::class.javaPrimitiveType!!, Int::class.javaPrimitiveType!!, String::class.java), listOf(size, locale)) {
                        arrayOf(input.clone(), Hex.HexCase.UPPER, 16, 0, "\n")
                    }
                }
            }
        } finally { Locale.setDefault(Locale.Category.FORMAT, saved) }
    }

    @Test fun `dump PrintStream effects include null output ownership autoflush and suppressed IO errors`() {
        for (input in listOf(null, byteArrayOf(), ByteArray(35) { it.toByte() }))
            for (nullOutput in listOf(false, true)) for (defaults in listOf(false, true))
                for (autoFlush in listOf(false, true)) for (failAt in listOf(-1, 0, 3, 64))
                    SpecChecks.dumpPrint(input, null, 16, 2, nullOutput, defaults, failAt, autoFlush)
    }
}

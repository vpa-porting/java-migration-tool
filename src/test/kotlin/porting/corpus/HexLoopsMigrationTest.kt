package porting.corpus

import net.lbruun.hexutils.Hex
import org.junit.jupiter.api.Test
import porting.fuzz.FuzzSubjects
import porting.fuzz.SpecChecks
import java.util.Locale
import java.nio.file.Files
import java.nio.file.Path
import javax.tools.ToolProvider
import kotlin.test.assertEquals

class HexLoopsMigrationTest {
    @Test fun `harmless effects preserve prefix mutation identity and decode outcomes`() {
        val target = FuzzSubjects.harmlessEffects.target
        for (s in listOf(null, "", "0123456789abcdef", "gh2k456789mbcdtf", "g", "gh!kt", "01!ae", "A", "\ud800", "\uffff")) {
            for (name in listOf("convertToHarmless", "convertFromHarmless", "hexStrHarmlessToBytes"))
                SpecChecks.harmless(name, arrayOf(CharArray::class.java), listOf(s), target, "migrated") { arrayOf(s?.toCharArray()) }
            SpecChecks.harmless("hexStrHarmlessToBytes", arrayOf(CharSequence::class.java), listOf(s), target, "migrated") { arrayOf(s) }
            SpecChecks.harmless("hexStrHarmlessToBytes", arrayOf(CharSequence::class.java), listOf(s), target, "migrated") { arrayOf(s?.let(::StringBuilder)) }
        }
        val source = Path.of("SpecCorpus/hexutils-to-java-hexformat/generated-harmless-effects/src/main/java/Api.java")
        assertEquals(0, ToolProvider.getSystemJavaCompiler().run(null, null, null, "-classpath", "", "-d",
            Files.createTempDirectory("harmless-effects-jdk").toString(), source.toString()))
    }

    @Test fun `dump preserves wrapper errors row layout locale and stream effects`() {
        val target = FuzzSubjects.dump.target
        val bytes = ByteArray::class.java; val case = Hex.HexCase::class.java; val int = Int::class.javaPrimitiveType!!
        for (input in listOf(null, byteArrayOf(), ByteArray(17) { (it * 17).toByte() }))
            for (width in listOf(-2, -1, 0, 1, 2, 16, 1 shl 29)) for (indent in listOf(-1, 0, 2))
                for (c in listOf(null, Hex.HexCase.LOWER, Hex.HexCase.UPPER)) {
                    val logged = listOf(input, c, width, indent)
                    SpecChecks.dumpValue("prettyPrint", arrayOf(bytes, case, int, int), logged, target, "migrated") { arrayOf(input?.clone(), c, width, indent) }
                    for (sep in listOf(null, "", "\r\n"))
                        SpecChecks.dumpValue("prettyPrintStr", arrayOf(bytes, case, int, int, String::class.java), logged, target, "migrated") { arrayOf(input?.clone(), c, width, indent, sep) }
                    SpecChecks.dumpValue("prettyPrintStr", arrayOf(bytes, case, int, int), logged, target, "migrated") { arrayOf(input?.clone(), c, width, indent) }
                }
        val saved = Locale.getDefault(Locale.Category.FORMAT)
        try {
            for (locale in listOf(Locale.US, Locale.forLanguageTag("ar-EG"))) {
                Locale.setDefault(Locale.Category.FORMAT, locale)
                for (n in listOf(9999, 10000)) {
                    val input = ByteArray(n) { it.toByte() }
                    for (name in listOf("prettyPrint", "prettyPrintStr"))
                        SpecChecks.dumpValue(name, arrayOf(bytes), listOf(n, locale), target, "migrated") { arrayOf(input.clone()) }
                }
            }
        } finally { Locale.setDefault(Locale.Category.FORMAT, saved) }
        for (input in listOf(null, byteArrayOf(), ByteArray(35) { it.toByte() }))
            for (nullOutput in listOf(false, true)) for (defaults in listOf(false, true))
                for (autoFlush in listOf(false, true)) for (failAt in listOf(-1, 0, 3, 64))
                    SpecChecks.dumpPrint(input, null, 16, 2, nullOutput, defaults, failAt, autoFlush, target, "migrated")
    }
}

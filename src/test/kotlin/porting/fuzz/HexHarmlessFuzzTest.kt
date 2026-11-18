package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import net.lbruun.hexutils.Hex
import org.junit.jupiter.api.BeforeAll

/** The original API versus methods actually synthesized from hexharmless.lsl. */
class HexHarmlessFuzzTest {
    companion object {
        @BeforeAll @JvmStatic fun prepareEnumMetadata() {
            // Load/link the enum before Jazzer's argument provider installs its
            // transformer, as the Hex-typed target signatures do. Do not initialize it.
            Hex.HexCase::class.java.declaredMethods
        }
    }
    @FuzzTest
    fun scalars(data: FuzzedDataProvider) = track {
        val char = Char::class.javaPrimitiveType!!
        for (c in "0123456789abcdefghkmtAZ!" + data.consumeChar())
            for (name in listOf("convertToHarmless", "convertFromHarmless"))
                FuzzSubjects.compare(FuzzSubjects.harmless, name, arrayOf(char), emptyList()) { arrayOf(c) }
    }

    @FuzzTest
    fun encode(data: FuzzedDataProvider) = track {
        val b = data.consumeByte()
        val input = if (data.consumeBoolean()) data.consumeBytes(256) else null
        FuzzSubjects.compare(FuzzSubjects.harmless, "byteToHexHarmless", arrayOf(Byte::class.javaPrimitiveType!!), emptyList()) { arrayOf(b) }
        for (name in listOf("bytesToHexHarmless", "bytesToHexStrHarmless"))
            FuzzSubjects.compare(FuzzSubjects.harmless, name, arrayOf(ByteArray::class.java), Features.bytes("data", input)) { arrayOf(input?.clone()) }
    }

    @FuzzTest
    fun pairs(data: FuzzedDataProvider) = track {
        val alphabet = "gh2k456789mbcdtf!A0"
        val a = if (data.consumeBoolean()) alphabet[data.consumeInt(0, alphabet.lastIndex)] else data.consumeChar()
        val b = if (data.consumeBoolean()) alphabet[data.consumeInt(0, alphabet.lastIndex)] else data.consumeChar()
        FuzzSubjects.compare(FuzzSubjects.harmless, "hexCharHarmlessToByte",
            arrayOf(Char::class.javaPrimitiveType!!, Char::class.javaPrimitiveType!!), emptyList()) { arrayOf(a, b) }
    }
}

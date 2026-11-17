package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest

/** In-place mutation and decode contracts: original versus specification, not migrated code. */
open class HexHarmlessSpecFuzzTest {
    protected open val candidate: Class<*> get() = porting.spec.HarmlessModel::class.java
    protected open val kind = "spec-conformance"
    private fun arrays(text: String?) {
        for (name in listOf("convertToHarmless", "convertFromHarmless"))
            SpecChecks.harmless(name, arrayOf(CharArray::class.java), listOf(text), candidate, kind) { arrayOf(text?.toCharArray()) }
    }
    private fun decode(text: String?) {
        val name = "hexStrHarmlessToBytes"
        SpecChecks.harmless(name, arrayOf(CharArray::class.java), listOf(text), candidate, kind) { arrayOf(text?.toCharArray()) }
        SpecChecks.harmless(name, arrayOf(CharSequence::class.java), listOf(text), candidate, kind) { arrayOf(text) }
        SpecChecks.harmless(name, arrayOf(CharSequence::class.java), listOf(text, "StringBuilder"), candidate, kind) { arrayOf(text?.let(::StringBuilder)) }
    }
    private fun text(data: FuzzedDataProvider): String? {
        if (data.consumeInt(0, 7) == 0) return null
        val alphabet = "0123456789abcdefghkmtAZ!"
        return buildString { repeat(data.consumeInt(0, 80)) {
            append(if (data.consumeBoolean()) alphabet[data.consumeInt(0, alphabet.lastIndex)] else data.consumeChar())
        } }
    }
    @FuzzTest
    fun mutate(data: FuzzedDataProvider) = track {
        if (mutateSeeded.add(javaClass.name)) { for (s in seeds) arrays(s) }
        arrays(text(data))
    }
    @FuzzTest
    fun decode(data: FuzzedDataProvider) = track {
        if (decodeSeeded.add(javaClass.name)) { for (s in seeds) decode(s) }
        decode(text(data))
    }
    companion object {
        private val mutateSeeded = mutableSetOf<String>()
        private val decodeSeeded = mutableSetOf<String>()
        private val seeds = listOf(null, "", "0123456789abcdef", "gh2k456789mbcdtf", "g", "gh!kt", "01!ae", "A", "\uffff")
    }
}

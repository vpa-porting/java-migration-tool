package porting.fuzz

import net.lbruun.hexutils.Hex
import net.lbruun.hexutils.HexDump
import net.lbruun.hexutils.HexHarmless
import porting.corpus.CorpusHarness
import porting.spec.HarmlessModel
import porting.spec.HexDumpModel
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.OutputStream
import java.io.PrintStream

/** Comparisons against executable specifications, explicitly not generated migrations. */
object SpecChecks {
    private fun record(name: String, logged: List<Any?>, source: CorpusHarness.Outcome, model: CorpusHarness.Outcome, kind: String) {
        DiffRecorder.observe(name, listOf("verification=$kind"), logged, source, model)
        check(CorpusHarness.outcomesMatchExactly(source, model)) { "$name: original=$source specification=$model args=$logged" }
    }
    private fun canonical(value: Any?): Any? = when (value) {
        is ByteArray, is CharArray, is String -> Render.arg(value, Render.FULL)
        is StringBuilder -> Render.arg(value.toString(), Render.FULL)
        is Array<*> -> value.map(::canonical)
        else -> value
    }

    private fun observe(clazz: Class<*>, name: String, types: Array<Class<*>>, args: Array<Any?>): CorpusHarness.Outcome {
        val result = CorpusHarness.invoke(clazz, name, types, *args)
        val returned = if (result is CorpusHarness.Value) canonical(result.value) else null
        val error = if (result is CorpusHarness.Thrown) result.exceptionClass.name else null
        // Include mutation and returned-array identity on both successful and exceptional exits.
        val after = args.filter { it is CharArray || it is ByteArray || it is StringBuilder }.map { canonical(it) }
        val identity = result is CorpusHarness.Value && result.value is CharArray && result.value === args.firstOrNull()
        return CorpusHarness.Value(listOf(error, returned, after, identity))
    }

    fun harmless(name: String, types: Array<Class<*>>, logged: List<Any?>,
                 candidate: Class<*> = HarmlessModel::class.java, kind: String = "spec-conformance", args: () -> Array<Any?>) {
        record("$name(${types.joinToString { it.simpleName }})", logged,
            observe(HexHarmless::class.java, name, types, args()), observe(candidate, name, types, args()), kind)
    }

    fun dumpValue(name: String, types: Array<Class<*>>, logged: List<Any?>,
                  candidate: Class<*> = HexDumpModel::class.java, kind: String = "spec-conformance", args: () -> Array<Any?>) {
        record("$name(${types.joinToString { it.simpleName }})", logged,
            observe(HexDump::class.java, name, types, args()), observe(candidate, name, types, args()), kind)
    }

    fun dumpPrint(input: ByteArray?, case: Hex.HexCase?, width: Int, indent: Int, nullOutput: Boolean,
                  defaults: Boolean, failAt: Int, autoFlush: Boolean,
                  candidate: Class<*> = HexDumpModel::class.java, kind: String = "spec-conformance") {
        fun run(clazz: Class<*>): CorpusHarness.Outcome {
            val bytes = ByteArrayOutputStream()
            val lines = mutableListOf<String?>()
            val output = object : OutputStream() {
                override fun write(b: Int) {
                    if (bytes.size() >= failAt && failAt >= 0) throw IOException("injected output failure")
                    bytes.write(b)
                }
            }
            var closed = false
            var flushes = 0
            val ps = object : PrintStream(output, autoFlush, Charsets.UTF_8) {
                override fun println(x: String?) { lines += x; super.println(x) }
                override fun close() { closed = true; super.close() }
                override fun flush() { flushes++; super.flush() }
            }
            val types: Array<Class<*>> = if (defaults) arrayOf(ByteArray::class.java, PrintStream::class.java)
                else arrayOf(ByteArray::class.java, Hex.HexCase::class.java, Int::class.javaPrimitiveType!!,
                    Int::class.javaPrimitiveType!!, PrintStream::class.java)
            val originalInput = input?.clone()
            val args: Array<Any?> = if (defaults) arrayOf(originalInput, if (nullOutput) null else ps)
                else arrayOf(originalInput, case, width, indent, if (nullOutput) null else ps)
            val result = CorpusHarness.invoke(clazz, "prettyPrint", types, *args)
            val flushesBeforeCheck = flushes
            val errorFlag = ps.checkError()
            return CorpusHarness.Value(listOf(if (result is CorpusHarness.Thrown) result.exceptionClass.name else null,
                lines.map(::canonical), canonical(bytes.toByteArray()), closed, flushesBeforeCheck, errorFlag, canonical(originalInput)))
        }
        record("prettyPrint(${if (defaults) "defaults" else "explicit"},PrintStream)",
            listOf(input, case, width, indent, nullOutput, failAt, autoFlush),
            run(HexDump::class.java), run(candidate), kind)
    }
}

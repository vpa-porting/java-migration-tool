package porting.fuzz

import com.code_intelligence.jazzer.api.Jazzer
import porting.corpus.CorpusHarness.Outcome
import porting.corpus.CorpusHarness.Thrown
import porting.corpus.CorpusHarness.Value
import java.io.File

/**
 * Collects every observed comparison of the original and the migrated `Api` and answers *for which
 * inputs* they differ. A divergence is classified into a category (method + kind of difference),
 * and each call carries input features (e.g. `data=null`, `off+len>size`, `delim=hex digit`), so the
 * report can state both the smallest known example of a category and, per feature, how often a call
 * with that feature diverges.
 *
 * Feedback to the fuzzer: the first time a category is seen, `Jazzer.exploreState` marks it as new
 * coverage, so libFuzzer keeps the input in its corpus and mutates around it; coverage of the
 * original library's and the migrated code's own branches is gathered by instrumentation.
 */
object DiffRecorder {
    class Category(val method: String, val kind: String) {
        var count = 0
        var example: Example? = null
        val featureCounts = linkedMapOf<String, Int>()
    }

    class Example(val args: String, val source: String, val target: String, val size: Int)

    private class FeatureStat(var calls: Int = 0, var diverged: Int = 0)

    private val categories = linkedMapOf<String, Category>()
    private val features = sortedMapOf<String, FeatureStat>()
    private val calls = sortedMapOf<String, IntArray>() // method -> [calls, divergences]
    private val strict = System.getProperty("fuzz.strict") == "true"
    private val target = System.getProperty("fuzz.target")
    private val reportDir = System.getProperty("fuzz.reportDir")
    private val verificationKind = System.getProperty("fuzz.verificationKind", "migrated")
    private val candidateLabel = if (verificationKind == "spec-conformance") "specification" else "migrated"

    init {
        if (target != null && reportDir != null) Runtime.getRuntime().addShutdownHook(Thread { writeReport() })
    }

    @Synchronized
    fun observe(method: String, features: List<String>, args: List<Any?>, source: Outcome, target: Outcome) {
        CoverageTracker.note(method, args, source, target)
        val tally = calls.getOrPut(method) { IntArray(2) }
        tally[0]++
        val kind = classify(source, target)
        for (f in features) this.features.getOrPut("$method | $f") { FeatureStat() }.let { it.calls++; if (kind != null) it.diverged++ }
        if (kind == null) return

        tally[1]++
        val key = "$method | $kind"
        val isNew = key !in categories
        val category = categories.getOrPut(key) { Category(method, kind) }
        category.count++
        for (f in features) category.featureCounts.merge(f, 1, Int::plus)
        logDivergence(category, args, source, target)
        val rendered = args.joinToString(", ") { Render.arg(it) }
        val size = args.sumOf { Render.size(it) }
        if (category.example.let { it == null || size < it.size }) {
            category.example = Example(rendered, Render.outcome(source), Render.outcome(target), size)
        }
        if (isNew) Jazzer.exploreState((categories.size % 256).toByte(), method.hashCode())
        if (strict) throw AssertionError("$method($rendered): source=${Render.outcome(source)}, target=${Render.outcome(target)}")
    }

    private val maxPerCategory = System.getProperty("fuzz.maxPerCategory")?.toIntOrNull() ?: 5000
    private val seenLines = HashSet<String>()
    private val perCategoryLogged = HashMap<String, Int>()
    private val omitted = HashMap<String, Int>()
    private var divergenceLog: java.io.PrintWriter? = null

    /**
     * Appends every distinct divergent call, with the full arguments and both outcomes, to
     * `<target>.divergences.log` as it happens (so it survives a crash). Identical lines are written
     * once; each category is capped at `fuzz.maxPerCategory` lines (the report states how many were
     * left out), so one frequent kind cannot crowd out rare ones.
     */
    private fun logDivergence(category: Category, args: List<Any?>, source: Outcome, target: Outcome) {
        if (this.target == null || reportDir == null) return
        val line = "${category.method.substringBefore('(')}(${args.joinToString(", ") { Render.arg(it, Render.FULL) }})\n" +
            "    original: ${Render.outcome(source, Render.FULL)}\n" +
            "    $candidateLabel: ${Render.outcome(target, Render.FULL)}"
        val key = "${category.method} | ${category.kind}"
        if ((perCategoryLogged[key] ?: 0) >= maxPerCategory) {
            omitted.merge(key, 1, Int::plus)
            return
        }
        if (!seenLines.add(line)) return
        val logged = perCategoryLogged.merge(key, 1, Int::plus)!!
        val log = divergenceLog ?: java.io.PrintWriter(
            File(File(reportDir).also { it.mkdirs() }, "${this.target}.divergences.log").bufferedWriter(),
        ).also { divergenceLog = it; it.println("# every distinct divergent call: arguments, then the original's and the migrated result") }
        if (logged == 1) log.println("\n## $key")
        log.println(line)
        log.flush()
    }

    /** null when the outcomes agree, otherwise a stable description of how they differ. */
    private fun classify(a: Outcome, b: Outcome): String? = when {
        a is Value && b is Value ->
            if (porting.corpus.CorpusHarness.valuesEqual(a.value, b.value)) null
            else "values differ" + lengthNote(a.value, b.value)
        a is Thrown && b is Thrown ->
            if (a.exceptionClass == b.exceptionClass) null
            else "both throw, different class: ${a.exceptionClass.simpleName} vs ${b.exceptionClass.simpleName}"
        a is Thrown -> "original throws ${a.exceptionClass.simpleName}, migrated returns a value"
        else -> "original returns a value, migrated throws ${(b as Thrown).exceptionClass.simpleName}"
    }

    private fun lengthNote(a: Any?, b: Any?): String {
        val la = Render.length(a)
        val lb = Render.length(b)
        return if (la == null || lb == null) "" else if (la == lb) " (same length)" else " (length differs)"
    }

    @Synchronized
    private fun writeReport() {
        val dir = File(reportDir).also { it.mkdirs() }
        File(dir, "$target.md").writeText(markdown())
        File(dir, "$target.json").writeText(json())
        divergenceLog?.let { log ->
            for ((key, n) in omitted) log.println("# omitted by fuzz.maxPerCategory=$maxPerCategory: $n more in \"$key\"")
            log.flush()
        }
    }

    private fun markdown(): String = buildString {
        appendLine("# $target")
        appendLine("Verification kind: $verificationKind. Candidate is ${if (verificationKind == "spec-conformance") "an executable specification model, not generated code" else "generated migrated code"}.")
        appendLine()
        appendLine("| method | calls | divergences | rate |")
        appendLine("|---|---:|---:|---:|")
        for ((m, t) in calls) appendLine("| `$m` | ${t[0]} | ${t[1]} | ${"%.2f".format(100.0 * t[1] / t[0])}% |")
        for (c in categories.values.sortedByDescending { it.count }) {
            appendLine()
            appendLine("## `${c.method}`: ${c.kind} (${c.count}x)")
            val e = c.example!!
            appendLine("Smallest example: `${c.method.substringBefore('(')}(${e.args})` -> original **${e.source}**, $candidateLabel **${e.target}**")
            val always = c.featureCounts.filterValues { it == c.count }.keys
            if (always.isNotEmpty()) appendLine("Present in every divergence of this kind: ${always.joinToString { "`$it`" }}")
        }
        appendLine()
        appendLine("## Divergence rate by input feature")
        appendLine("| feature | calls | divergent | rate |")
        appendLine("|---|---:|---:|---:|")
        for ((f, s) in features.entries.sortedByDescending { it.value.diverged.toDouble() / it.value.calls }) {
            if (s.diverged == 0) continue
            appendLine("| `$f` | ${s.calls} | ${s.diverged} | ${"%.1f".format(100.0 * s.diverged / s.calls)}% |")
        }
    }

    private fun json(): String = buildString {
        fun q(s: String) = "\"" + s.replace("\\", "\\\\").replace("\"", "\\\"").replace("\n", "\\n") + "\""
        append("{\"target\":${q(target)},\"verification_kind\":${q(verificationKind)},\"methods\":{")
        append(calls.entries.joinToString(",") { (m, t) -> "${q(m)}:{\"calls\":${t[0]},\"divergences\":${t[1]}}" })
        append("},\"categories\":[")
        append(categories.values.joinToString(",") { c ->
            val e = c.example!!
            "{\"method\":${q(c.method)},\"kind\":${q(c.kind)},\"count\":${c.count}," +
                "\"example\":{\"args\":${q(e.args)},\"original\":${q(e.source)},\"candidate\":${q(e.target)}}," +
                "\"alwaysPresent\":[${c.featureCounts.filterValues { it == c.count }.keys.joinToString(",") { q(it) }}]}"
        })
        append("],\"features\":[")
        append(features.entries.filter { it.value.diverged > 0 }.joinToString(",") { (f, s) ->
            "{\"feature\":${q(f)},\"calls\":${s.calls},\"divergent\":${s.diverged}}"
        })
        append("]}")
    }
}

/** Rendering of arguments and outcomes for the report: printable, escaped, bounded. */
object Render {
    fun length(v: Any?): Int? = when (v) {
        is ByteArray -> v.size
        is CharArray -> v.size
        is String -> v.length
        else -> null
    }

    fun size(v: Any?): Int = length(v) ?: 1

    /** Compact rendering for summaries (long values are cut). */
    const val SHORT = 80

    /** Rendering for the divergence log: effectively complete, so the input can be reproduced from it. */
    const val FULL = 100_000

    fun arg(v: Any?, limit: Int = SHORT): String = when (v) {
        null -> "null"
        is ByteArray -> "byte[${v.size}]" +
            if (limit == FULL || v.size <= 48) v.take(limit).joinToString(",", "{", "}") { "%02x".format(it) }
            else "{${v.take(16).joinToString(",") { "%02x".format(it) }},...}"
        is CharArray -> "char[${v.size}]" + text(String(v), limit)
        is String -> text(v, limit)
        else -> v.toString()
    }

    private fun text(s: String, limit: Int = SHORT): String {
        val shown = if (s.length > limit) s.take(limit) else s
        val escaped = shown.map {
            when {
                it == '\n' -> "\\n"
                it == '\r' -> "\\r"
                it == '\t' -> "\\t"
                it.code in 32..126 -> it.toString()
                else -> "\\u%04x".format(it.code)
            }
        }.joinToString("")
        return "\"$escaped${if (s.length > limit) "..." else ""}\""
    }

    fun outcome(o: Outcome, limit: Int = SHORT): String = when (o) {
        is Thrown -> "throws ${o.exceptionClass.simpleName}"
        is Value -> arg(o.value, limit)
    }
}

/** Input features: coarse, data-independent facts about an argument that explain a divergence. */
object Features {
    private fun bucket(n: Int) = when {
        n == 0 -> "empty"
        n < 4 -> "1..3"
        n < 16 -> "4..15"
        n < 77 -> "16..76"
        else -> "77+"
    }

    fun bytes(name: String, v: ByteArray?): List<String> =
        if (v == null) listOf("$name=null") else listOf("$name.len=${bucket(v.size)}")

    fun range(off: Int, len: Int, size: Int?): List<String> {
        val f = mutableListOf<String>()
        if (off < 0) f += "off<0"
        if (len < 0) f += "len<0"
        if (size != null && off >= 0 && len >= 0 && off.toLong() + len > size) f += "off+len>size"
        if (size != null && f.isEmpty()) f += "slice in range"
        if (len == 0) f += "len=0"
        return f
    }

    /** Base64 text: alphabet membership, padding position, separators, length residues. */
    fun base64Text(name: String, s: String?): List<String> {
        if (s == null) return listOf("$name=null")
        val f = mutableListOf("$name.len=${bucket(s.length)}")
        val legal = s.count { it in 'A'..'Z' || it in 'a'..'z' || it in '0'..'9' || it == '+' || it == '/' || it == '=' }
        if (legal != s.length) f += "$name has char outside base64 alphabet"
        if (s.any { it.code > 255 }) f += "$name has char > U+00FF"
        if (s.any { it == '\r' || it == '\n' }) f += "$name has CR/LF"
        val firstPad = s.indexOf('=')
        if (firstPad >= 0 && s.substring(firstPad).any { it != '=' }) f += "$name has '=' before other data"
        if (firstPad >= 0) f += "$name has '='"
        if (legal % 4 != 0) f += "$name legal chars not multiple of 4"
        return f
    }

    fun delimiter(d: String?): List<String> = when {
        d == null -> listOf("delim=null")
        d.isEmpty() -> listOf("delim=empty")
        else -> buildList {
            add("delim.len=${if (d.length == 1) "1" else "2+"}")
            if (d.any { it in "0123456789abcdefABCDEF" }) add("delim contains hex digit")
        }
    }

    fun hexText(s: String?): List<String> {
        if (s == null) return listOf("text=null")
        val f = mutableListOf("text.len=${bucket(s.length)}")
        if (s.length % 2 != 0) f += "text odd length"
        if (s.any { !(it in '0'..'9' || it in 'a'..'f' || it in 'A'..'F') }) f += "text has non-hex char"
        if (s.any { it.code > 255 }) f += "text has char > U+00FF"
        return f
    }
}

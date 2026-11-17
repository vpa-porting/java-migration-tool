package porting.fuzz

import porting.corpus.CorpusHarness.Outcome
import java.io.File
import java.io.PrintWriter
import java.util.BitSet
import java.util.concurrent.atomic.AtomicLong

/**
 * Two live logs for a fuzz run, written next to the divergence report (`<target>.*.log`):
 *
 * - `coverage.log`: every input that reached new code, with the coverage status at that moment
 *   (edges, and line/branch/instruction percentages of the instrumented library classes);
 * - `sample.log`: every [sampleSeconds] seconds, the argument set currently being checked.
 *
 * New coverage is detected after each fuzz input by comparing Jazzer's edge counters
 * (`CoverageMap`, an off-heap byte per edge, reset by libFuzzer before every run) with the edges
 * seen so far. Percentages come from Jazzer's own JaCoCo analysis, restricted to what is
 * instrumented (the original libraries; see `jazzer.instrument` in build.gradle.kts), so the
 * denominator only contains classes loaded so far. Outside fuzzing mode (no agent) everything here
 * switches itself off; failures in the coverage plumbing never affect the fuzz target.
 */
object CoverageTracker {
    private class Call(val method: String, val args: List<Any?>, val source: Outcome, val target: Outcome) {
        fun render() = "${method.substringBefore('(')}(${args.joinToString(", ") { Render.arg(it) }}) " +
                "-> original ${Render.outcome(source)}, candidate ${Render.outcome(target)}"
    }

    private class Percent(val lines: String, val branches: String, val instructions: String) {
        override fun toString() = "lines $lines, branches $branches, instructions $instructions"
    }

    private val target: String? = System.getProperty("fuzz.target")
    private val reportDir: String? = System.getProperty("fuzz.reportDir")
    private val sampleSeconds = System.getProperty("fuzz.sampleSeconds")?.toLongOrNull() ?: 5L
    private val startNanos = System.nanoTime()

    private val seen = BitSet()
    private var inputs = 0L
    private val current = ArrayList<Call>()
    @Volatile private var latest: Call? = null
    private val executions = AtomicLong()
    @Volatile private var edges = 0
    @Volatile private var lastPercent: Percent? = null

    private val counters: Counters? by lazy { runCatching { Counters.open() }.getOrNull() }
    private var coverageLog: PrintWriter? = null
    private var sampleLog: PrintWriter? = null
    private var started = false

    private class Counters(val unsafe: sun.misc.Unsafe, val address: Long, val sizeField: java.lang.reflect.Field) {
        fun size(): Int = sizeField.getInt(null)

        companion object {
            fun open(): Counters {
                val map = Class.forName("com.code_intelligence.jazzer.runtime.CoverageMap")
                val unsafeField = sun.misc.Unsafe::class.java.getDeclaredField("theUnsafe").also { it.isAccessible = true }
                val size = map.getDeclaredField("currentNumCounters").also { it.isAccessible = true }
                return Counters(unsafeField.get(null) as sun.misc.Unsafe, map.getField("countersAddress").getLong(null), size)
            }
        }
    }

    private fun elapsed(): String {
        val ms = (System.nanoTime() - startNanos) / 1_000_000
        return "%02d:%02d.%03d".format(ms / 60_000, ms / 1000 % 60, ms % 1000)
    }

    private fun writer(suffix: String): PrintWriter {
        val dir = File(reportDir!!).also { it.mkdirs() }
        return PrintWriter(File(dir, "$target.$suffix.log").bufferedWriter(), true)
    }

    /** Called by [DiffRecorder] for every comparison; cheap (no rendering). */
    fun note(method: String, args: List<Any?>, source: Outcome, target: Outcome) {
        if (reportDir == null || this.target == null) return
        val call = Call(method, args, source, target)
        current += call
        latest = call
    }

    fun begin() {
        if (reportDir == null || target == null) return
        current.clear()
        if (!started) start()
    }

    private fun start() {
        started = true
        if (counters == null) return // not running under the Jazzer agent
        coverageLog = writer("coverage")
        sampleLog = writer("sample")
        coverageLog!!.println("# new coverage: input that reached new code, with the coverage status after it")
        sampleLog!!.println("# argument set being checked, every ${sampleSeconds}s")
        Thread({
            while (true) {
                Thread.sleep(sampleSeconds * 1000)
                sample()
            }
        }, "fuzz-sampler").also { it.isDaemon = true }.start()
        Runtime.getRuntime().addShutdownHook(Thread { finish() })
    }

    /** After one fuzz input: which edge counters are set that were never set before. */
    fun end() {
        if (reportDir == null || target == null) return
        executions.incrementAndGet()
        inputs++
        val c = counters ?: return
        val n = c.size()
        var added = 0
        var i = 0
        while (i < n) {
            // Eight counters at a time; only a non-zero word is inspected byte by byte.
            if (i + 8 <= n && c.unsafe.getLong(c.address + i) == 0L) { i += 8; continue }
            if (c.unsafe.getByte(c.address + i).toInt() != 0 && !seen[i]) { seen.set(i); added++ }
            i++
        }
        if (added > 0) onNewCoverage(added)
    }

    @Synchronized
    private fun onNewCoverage(added: Int) {
        val before = edges
        edges = seen.cardinality()
        val percent = measure()?.also { lastPercent = it }
        val log = coverageLog ?: return
        log.println("[${elapsed()}] input #$inputs: edges $before -> $edges (+$added), ${percent ?: lastPercent ?: "percent n/a"}")
        for (call in current) log.println("    ${call.render()}")
    }

    @Synchronized
    private fun sample() {
        val log = sampleLog ?: return
        val call = latest
        log.println(
            "[${elapsed()}] inputs=${executions.get()} edges=$edges ${lastPercent ?: ""}\n    " +
                (call?.render() ?: "(no call yet)"),
        )
    }

    @Synchronized
    private fun finish() {
        // JVM retransformation can change class bytes (e.g. enum constant pools).
        // Preserve exactly the bytecode whose IDs and probe layout Jazzer recorded.
        val recorder = Class.forName("com.code_intelligence.jazzer.instrumentor.CoverageRecorder")
        val field = recorder.getDeclaredField("instrumentedClassInfo").also { it.isAccessible = true }
        val instrumented = field.get(null) as Map<*, *>
        java.util.jar.JarOutputStream(File(reportDir!!, "$target.classes.jar").outputStream()).use { jar ->
            for ((name, info) in instrumented.entries.sortedBy { it.key.toString() }) {
                val getter = info!!.javaClass.getMethod("getBytecode").also { it.isAccessible = true }
                val bytes = getter.invoke(info) as ByteArray
                jar.putNextEntry(java.util.jar.JarEntry("$name.class"))
                jar.write(bytes)
                jar.closeEntry()
            }
        }
        val percent = measure() ?: lastPercent
        coverageLog?.println("# final: inputs=${executions.get()}, edges=${seen.cardinality()}, ${percent ?: "percent n/a"}")
        coverageLog?.flush()
        sampleLog?.flush()
    }

    /** Line/branch/instruction coverage of the instrumented classes for the edges seen so far (JaCoCo, via Jazzer). */
    private fun measure(): Percent? = runCatching {
        val recorder = Class.forName("com.code_intelligence.jazzer.instrumentor.CoverageRecorder")
        val ids = HashSet<Int>().also { s -> seen.stream().forEach { s.add(it) } }
        val builder = recorder.getMethod("analyzeCoverage", Set::class.java).invoke(recorder.getField("INSTANCE").get(null), ids)
        val classes = builder.javaClass.getMethod("getClasses").invoke(builder) as Collection<*>
        val node = Class.forName("com.code_intelligence.jazzer.third_party.org.jacoco.core.analysis.ICoverageNode")
        val counter = Class.forName("com.code_intelligence.jazzer.third_party.org.jacoco.core.analysis.ICounter")
        fun total(getter: String): String {
            var covered = 0
            var all = 0
            for (cls in classes) {
                val ctr = node.getMethod(getter).invoke(cls)
                covered += counter.getMethod("getCoveredCount").invoke(ctr) as Int
                all += counter.getMethod("getTotalCount").invoke(ctr) as Int
            }
            return if (all == 0) "n/a" else "%.1f%% (%d/%d)".format(100.0 * covered / all, covered, all)
        }
        if (classes.isEmpty()) null else Percent(total("getLineCounter"), total("getBranchCounter"), total("getInstructionCounter"))
    }.getOrNull()
}

/** Wraps a fuzz target body so [CoverageTracker] sees where one input begins and ends. */
inline fun track(body: () -> Unit) {
    CoverageTracker.begin()
    try {
        body()
    } finally {
        CoverageTracker.end()
    }
}

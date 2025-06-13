package porting.ssa

import porting.expr.*

private const val RECT = "shape=rectangle"
private const val DIAM = "shape=diamond"
private const val NL = "\\l"

sealed class SsaBlock {
    companion object {
        var counter = 0
    }

    val nodeName: String = "s${++counter}"

    abstract fun toDot(sb: StringBuilder, visited: MutableSet<SsaBlock>)
    abstract fun removeEmpty()
    abstract fun nextNotEmpty(): SsaBlock

    abstract fun collectTraces(current: Trace, traces: MutableList<Trace>, ctx: TraceCtx)

    protected fun link(to: SsaBlock): String = "$nodeName->${to.nodeName}\n"
    protected fun link(to: SsaBlock, label: String): String = "$nodeName->${to.nodeName}[label=$label]\n"
}

class BasicBlock(
    val block: MutableList<DeclStat> = mutableListOf(),
    var next: SsaBlock? = null
) : SsaBlock() {
    override fun toDot(sb: StringBuilder, visited: MutableSet<SsaBlock>) {
        if (visited.contains(this)) return
        visited.add(this)
        sb.apply {
            val text = block.joinToString(NL, "", NL) { it.toDot() }
            append(nodeName)
            append("[$RECT label=\"")
            append(text.replace("\"", "\\\""))
            append("\"]\n")
        }
        next?.let {
            sb.append(link(it))
            it.toDot(sb, visited)
        }
    }

    override fun removeEmpty() {
        next = next?.nextNotEmpty()
        next?.removeEmpty()
    }

    override fun nextNotEmpty(): SsaBlock {
        return if (block.isNotEmpty() || next == null) this
        else next!!.nextNotEmpty()
    }

    override fun collectTraces(current: Trace, traces: MutableList<Trace>, ctx: TraceCtx) {
        this.block.forEach { current.body.add(it.toTraceStep()) }
        if (next == null) traces.add(current)
        else next!!.collectTraces(current, traces, ctx)
    }
}

data class IfBlock(
    val cond: LExpr,
    var thenBlock: SsaBlock? = null,
    var elseBlock: SsaBlock? = null,
) : SsaBlock() {
    override fun toDot(sb: StringBuilder, visited: MutableSet<SsaBlock>) {
        if (visited.contains(this)) return
        visited.add(this)

        sb.apply {
            append(nodeName)
            append("[$DIAM label=\"")
            append(cond.toString())
            append("\"]\n")
            thenBlock?.let {
                append(link(it, "true"))
                it.toDot(sb, visited)
            }
            elseBlock?.let {
                append(link(it, "false"))
                it.toDot(sb, visited)
            }
        }
    }

    override fun removeEmpty() {
        thenBlock = thenBlock?.nextNotEmpty()
        thenBlock?.removeEmpty()
        elseBlock = elseBlock?.nextNotEmpty()
        elseBlock?.removeEmpty()
    }

    override fun nextNotEmpty() = this

    override fun collectTraces(current: Trace, traces: MutableList<Trace>, ctx: TraceCtx) {
        val elseTrace = current.copy()
        elseTrace.traceNumber = ++ctx.traceInd
        elseTrace.parentTrace = current.traceNumber
        elseTrace.conditionInd = current.conditions.size

        current.body.add(Trace.Condition(cond))
        elseTrace.body.add(Trace.Condition(cond.not()))

        thenBlock!!.collectTraces(current, traces, ctx)
        elseBlock!!.collectTraces(elseTrace, traces, ctx)
    }
}

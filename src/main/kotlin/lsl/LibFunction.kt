package porting.lsl

import org.jetbrains.research.libsl.nodes.Automaton
import org.jetbrains.research.libsl.nodes.Function
import porting.PRINT_DEBUG
import porting.pre.PreBuilder
import porting.ssa.*

data class LibFunction(
    val automata: Automaton,
    val function: Function,
) {
    var funcNumber = -1

    private val ssaFunc: SsaFunction
    val ssaRoot: SsaBlock
        get() = ssaFunc.internal

    val args get() = ssaFunc.args

    val traces: List<Trace>
    val fullName: String
        get() = "${automata.name}$${function.name}"

    init {
        val preFunc = PreBuilder().processFunction(function, automata)
        ssaFunc = SsaBuilder().build(preFunc)
        traces = mutableListOf()
        val traceCtx = TraceCtx(0)
        val initTrace = Trace(this, args).also {
            it.conditionInd = 0
            it.traceNumber = traceCtx.next()
        }
        ssaRoot.collectTraces(initTrace, traces, traceCtx)
        if (PRINT_DEBUG) {
            println("Traces: ")
            traces.forEach {
                println(it.body)
            }
            println()
        }
    }

    override fun toString(): String {
        return "($funcNumber)${function.name}"
    }
}

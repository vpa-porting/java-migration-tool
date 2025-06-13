package porting.solver.param

import porting.TraceSeq
import porting.expr.LExpr
import porting.expr.LVar
import porting.ssa.Trace

class ParamSolution(
    val source: Trace,
    val traceSeqs: List<TraceSeq>,
    val conditions: List<LExpr>,
    var result: LExpr?,
    val argsMap: Map<LVar, LExpr>,
    val unused: Set<LVar>
) {
    fun print() {
        for (trace in traceSeqs.flatten()) {
            println(trace)
            for (arg in trace.args.map { it.name }) {
                val paramExpr = argsMap[arg]
                println("\t$arg := $paramExpr")
            }
        }
    }

    override fun toString(): String {
        return "($traceSeqs $argsMap)"
    }
}

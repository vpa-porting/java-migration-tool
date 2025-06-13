package porting.solver.trace

import porting.TraceSeq
import porting.copy
import porting.ssa.Trace
import porting.ssa.ActionCallStat
import java.util.IdentityHashMap

data class TraceSolution(
    val source: Trace,
    val solution: TraceSeq
) {

    fun divide(): List<TraceSeq> {
        val divided = mutableListOf<TraceSeq>()
        val current = mutableListOf<Trace>()

        var ind = 0
        val srcActToInd = IdentityHashMap<ActionCallStat, Int>()
        source.actions.forEach { srcActToInd[it] = ind++ }
        ind = 0
        val solActToInd = IdentityHashMap<ActionCallStat, Int>()
        solution.flatMap { it.actions }.forEach { solActToInd[it] = ind++ }
        if (srcActToInd.size != solActToInd.size) throw IllegalStateException()

        var traceInd = 0
        var condInd = 0
        val calledActions = mutableSetOf<Int>()
        while (condInd < source.conditions.size) {
            val condition = source.conditions[condInd]

            val conditionActions = source.actions
                .filter { condition.vars().contains(it.name) }
                .map { srcActToInd[it] }

            if (calledActions.containsAll(conditionActions)) {
                divided.add(current.copy())
                current.clear()
                condInd++
            } else {
                val traceActions = solution[traceInd].actions.map { solActToInd[it]!! }
                current.add(solution[traceInd])
                calledActions.addAll(traceActions)
                traceInd++
            }
        }
        while (traceInd < solution.size) current.add(solution[traceInd++])
        divided.add(current)
        return divided
    }
}

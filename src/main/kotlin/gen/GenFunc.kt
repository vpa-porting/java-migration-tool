package porting.gen

import porting.TraceSeq
import porting.expr.LExpr
import porting.expr.LVar
import porting.solver.BaseTraceNode
import porting.solver.CondNode
import porting.solver.EmptyNode
import porting.solver.TraceNode

sealed class GenNode

data class TraceCallsNode(
    val traceCalls: TraceSeq,
    val args: Map<LVar, LExpr>,
    val result: LExpr?,
    val next: GenNode?
) : GenNode()

data class ConditionNode(
    val cond: LExpr,
    val thenNode: GenNode?,
    val elseNode: GenNode?,
) : GenNode()

fun mkGenNode(current: BaseTraceNode): GenNode? {
    return when (current) {
        is EmptyNode -> null
        is TraceNode -> {
            val traceSeq = current.paramSol.traceSeqs[current.index]
            val args = current.paramSol.argsMap
            val result = if (current.index == current.paramSol.conditions.size)
                current.paramSol.result
            else null
            val next = mkGenNode(current.next)
            TraceCallsNode(traceSeq, args, result, next)
        }

        is CondNode -> {
            val cond = current.condition
            val thenNode = mkGenNode(current.thenNode)
            val elseNode = mkGenNode(current.elseNode)
            ConditionNode(cond, thenNode, elseNode)
        }
    }
}

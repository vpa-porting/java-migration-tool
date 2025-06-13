package porting.solver

import org.jetbrains.research.libsl.nodes.Automaton
import porting.expr.LExpr
import porting.solver.param.ParamSolution

sealed class BaseTraceNode {
  abstract fun collectAutomata(): Set<Automaton>
}

data object EmptyNode : BaseTraceNode() {
  override fun collectAutomata(): Set<Automaton> = setOf()
}

data class TraceNode(
  val paramSol: ParamSolution,
  val index: Int,
  val next: BaseTraceNode
) : BaseTraceNode() {
  override fun collectAutomata(): Set<Automaton> =
    paramSol.traceSeqs.flatten().map { it.function.automata }.toSet() + next.collectAutomata()
}

data class CondNode(
  val condition: LExpr,
  val thenNode: BaseTraceNode,
  val elseNode: BaseTraceNode
) : BaseTraceNode() {
  override fun collectAutomata(): Set<Automaton> =
    thenNode.collectAutomata() + elseNode.collectAutomata()
}

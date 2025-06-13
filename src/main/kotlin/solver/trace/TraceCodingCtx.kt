package porting.solver.trace

import io.ksmt.expr.KExpr
import io.ksmt.solver.KModel
import io.ksmt.sort.KArraySort
import io.ksmt.sort.KBoolSort
import io.ksmt.sort.KIntSort
import porting.KBoolExpr
import porting.KIntExpr
import porting.SEP
import porting.expr.LVar
import porting.lsl.LibFunction
import porting.smt.SMTContext
import porting.ssa.Trace
import porting.smt.TraceSMT
import porting.ssa.ActionCallStat

class TraceCodingCtx(
    private val actionToNum: Map<String, Int>,
    private val solutionLength: Int,
    private val source: Trace,
    private val traces: List<Trace>,
) {

    val ctx: SMTContext = SMTContext()
    private val sourceF: TraceSMT
    private val stepTraceInd: List<KIntExpr>
    private val stepActionsCnt: List<KIntExpr>
    private var actionIndices: KExpr<KArraySort<KIntSort, KIntSort>>
    private val stepTracesSMT: Array<Array<TraceSMT?>> =
        Array(solutionLength) { Array(traces.size) { null } }

    init {
        with(ctx) {
            stepTraceInd = List<KIntExpr>(solutionLength) { mkConst("x$it", intSort) }
            stepActionsCnt = List<KIntExpr>(solutionLength) { mkConst("a$it", intSort) }
            actionIndices = mkConst("actionIndices", mkArraySort(intSort, intSort))
            sourceF = source.toSMT(this)

            for (i in source.actions.indices) {
                val action = source.actions[i]
                val actionIndex = actionToNum[action.value.actionName]!!
                val callIndex = mkIntNum(i)
                actionIndices = mkArrayStore(actionIndices, callIndex, mkIntNum(actionIndex))
            }
        }
    }

    fun mkTraceFormula(): List<KBoolExpr> = with(ctx) {
        val formulas = mutableListOf<KBoolExpr>()
        iteration = 0

        val sourceActionsLength = mkIntNum(source.actions.size)

        for (stepInd in 0 until solutionLength) { // i - trace index in solution
            val orFormulas = mkStep(this, stepInd)
            formulas.add(mkOr(orFormulas))
        }
        formulas.add(mkArithAdd(stepActionsCnt) eq sourceActionsLength)

        return@with formulas
    }

    private fun mkStep(ctx: SMTContext, stepInd: Int): List<KBoolExpr> = with(ctx) {
        iteration = stepInd
        val orFormulas = mutableListOf<KExpr<KBoolSort>>()
        for (traceInd in traces.indices) {
            val andFormulas = mkStepTrace(ctx, stepInd, traceInd)
            orFormulas.add(mkAnd(andFormulas))
        }
        return@with orFormulas
    }

    private fun mkStepTrace(ctx: SMTContext, stepInd: Int, traceInd: Int): List<KBoolExpr> = with(ctx) {
        val prevActionsLength = actionsLength(this, stepInd)

        val trace = traces[traceInd]
        val actionSz = mkIntNum(trace.actions.size)
        val andFormulas = mutableListOf<KExpr<KBoolSort>>()

        val function = trace.function.function
        val funcName = "${function.name}$SEP$iteration$SEP$traceInd"
        val funcVar = mkConst(funcName, boolSort)

        val traceF = trace.toSMT(this)
        stepTracesSMT[stepInd][traceInd] = traceF

        val actions = mutableListOf<KBoolExpr>()

        for (actionCallInd in trace.actions.indices) {
            val action = trace.actions[actionCallInd]
            val callIndex = mkArithAdd(prevActionsLength, mkIntNum(actionCallInd))
            mkTraceAction(this, action, callIndex, actions)
        }

        andFormulas.add(stepTraceInd[stepInd] eq mkIntNum(traceInd + 1))
        andFormulas.add(stepActionsCnt[stepInd] eq actionSz)
        andFormulas.add(funcVar)
        andFormulas.addAll(actions)
        return@with andFormulas
    }

    private fun mkTraceAction(
        ctx: SMTContext,
        action: ActionCallStat,
        callIndex: KIntExpr,
        actions: MutableList<KBoolExpr>,
    ) = with(ctx) {
        val actionIndex = actionToNum[action.value.actionName]!!
        val select = mkArraySelect(actionIndices, callIndex)
        actions.add(select eq mkIntNum(actionIndex))
    }

    private fun actionsLength(ctx: SMTContext, stepInd: Int): KIntExpr = with(ctx) {
        return if (stepInd == 0) mkIntNum(0)
        else mkArithAdd(stepActionsCnt.subList(0, stepInd))
    }

    fun mkPrevSolutionNeg(ctx: SMTContext, indices: List<KIntExpr>): KBoolExpr {
        val andFormula = mutableListOf<KBoolExpr>()
        for (stepInd in indices.indices) {
            andFormula.add(ctx.mkEq(stepTraceInd[stepInd], indices[stepInd]))
        }
        return ctx.mkNot(ctx.mkAnd(andFormula))
    }

    fun currentSolution(indices: List<KIntExpr>): TraceSolution {
        val traceMap = mutableMapOf<LibFunction, Int>()
        val solution = indices.map {
            val traceInd = it.toString().toInt() - 1
            val trace = traces[traceInd]
            if (!traceMap.containsKey(trace.function)) traceMap[trace.function] = 0
            val ind = traceMap[trace.function]!!
            traceMap[trace.function] = ind + 1
            traces[traceInd].copy(rewriteIndex(ind))
        }
        return TraceSolution(source, solution)
    }

    fun currentSolution(model: KModel): List<KIntExpr> {
        return stepTraceInd.indices.map { stepInd -> model.eval(stepTraceInd[stepInd]) }
    }

    private fun rewriteIndex(ind: Int): (LVar) -> LVar = {
        LVar("${it.name}$SEP$ind", it.type)
    }
}
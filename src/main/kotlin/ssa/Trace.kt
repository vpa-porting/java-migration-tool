package porting.ssa

import porting.copy
import porting.expr.LExpr
import porting.expr.LVar
import porting.lsl.LibFunction
import porting.smt.ResultSMT
import porting.smt.SMTContext
import porting.smt.TraceSMT

data class Trace(
    val function: LibFunction,
    val args: List<DeclStat> = mutableListOf(),
    val body: MutableList<Step> = mutableListOf(),
) {

    sealed class Step {
        abstract fun copy(rewriteRule: (LVar) -> LVar): Step
    }

    data class Action(val step: ActionCallStat) : Step() {
        override fun copy(rewriteRule: (LVar) -> LVar) = Action(step.copy(rewriteRule))
        override fun toString(): String = "Action($step)"
    }

    data class Result(val step: ResultStat) : Step() {
        override fun copy(rewriteRule: (LVar) -> LVar) = Result(step.copy(rewriteRule))
        override fun toString(): String = "Result($step)"
    }

    data class Condition(val step: LExpr) : Step() {
        override fun copy(rewriteRule: (LVar) -> LVar) = Condition(step.renameVar(rewriteRule))
        override fun toString(): String = "Condition($step)"
    }

    var traceNumber = -1
    var parentTrace = -1
    var conditionInd = -1

    val actions
        get() = body.filterIsInstance<Action>().map { it.step }
    val conditions
        get() = body.filterIsInstance<Condition>().map { it.step }
    val result
        get() = body.filterIsInstance<Result>().firstOrNull()?.step

    fun toSMT(ctx: SMTContext): TraceSMT {
        val args = args.map { it.toSMT(ctx) }
        val actions = actions.map { it.toSMT(ctx) }
        val actionArgs = actions.flatMap { it.expr.args }
        val conditions = conditions.map { it.toSMT(ctx) }
        val result: ResultSMT? = result?.toSMT(ctx)
        return TraceSMT(function.fullName, args, actions, conditions, actionArgs, result)
    }

    fun copy(rewriteRule: (LVar) -> LVar) = Trace(
        function,
        args.copy { it.copy(rewriteRule) },
        body.copy { it.copy(rewriteRule) }
    ).also {
        it.traceNumber = traceNumber
        it.conditionInd = conditionInd
    }

    fun copy() = Trace(function, args.copy(), body.copy()).also {
        it.traceNumber = traceNumber
        it.conditionInd = conditionInd
    }

    override fun toString(): String {
        return "$function#$traceNumber"
    }
}

package porting.solver.param

import porting.KBoolExpr
import porting.PRINT_DEBUG
import porting.expr.LBinOp
import porting.expr.LExpr
import porting.expr.LUnOp
import porting.expr.LVar
import porting.gen.defaultValue
import porting.smt.SMTContext
import porting.ssa.Trace
import porting.smt.TraceSMT
import porting.solver.trace.TraceSolution
import java.util.Collections
import java.util.IdentityHashMap

class ParamCodingCtx(
    private val traceSolution: TraceSolution
) {

    val source = traceSolution.source

    val ctx: SMTContext = SMTContext()
    val sourceF: TraceSMT
    val solutionF: List<TraceSMT>

    private val sourceArgs = source.args.map { it.name }
    private val sourceActRes = source.actions.map { it.name }

    private val solution = traceSolution.solution
    private val solutionArgs = solution.flatMap { tr -> tr.args.map { it.name } }.toSet()

private val reverseMap1: Map<String, String> = mapOf(
    "+" to "+",
    "-" to "-",
    "~" to "~",
    "!" to "!",
)

    val resultEquations = mutableListOf<Pair<LExpr, LExpr>>()
    val actionEquations = mutableListOf<Pair<LExpr, LExpr>>()
    val argsEquations = mutableListOf<Pair<LExpr, LExpr>>()

    private val equations get() = (resultEquations + actionEquations + argsEquations)
    private val solTraceResults = solution.mapNotNull { it.result }.map { it.name }

    init {
        with(ctx) {
            sourceF = source.toSMT(this)
            solutionF = solution.map { it.toSMT(this) }
        }
    }

    fun mkParamFormula() {
        var sourceActionInd = 0
        val formula = mutableListOf<KBoolExpr>()

        formula.addAll(sourceF.conditions.map { it.bool() })

        for (solTrace in solution) {
            if (solTrace.result != null) {
                val (srcName, srcVal) = rewrite(solTrace.result!!.name, solTrace.result!!.value, source, solTrace)
                resultEquations.add(srcName to srcVal)
            }
            for (solAction in solTrace.actions) {
                val srcAction = source.actions[sourceActionInd++]
                actionEquations.add(srcAction.name to solAction.name)
                for (argInd in srcAction.value.args.indices) {
                    val srcArg = srcAction.value.args[argInd]
                    val solArg = solAction.value.args[argInd]
                    val (newSrc, newSol) = rewrite(srcArg, solArg, source, solTrace)
                    argsEquations.add(newSrc to newSol)
                }
            }
        }
        if (PRINT_DEBUG) {
            println()
            resultEquations.forEach { (l, r) -> println("$l = $r") }
            println()
            actionEquations.forEach { (l, r) -> println("$l = $r") }
            println()
            argsEquations.forEach { (l, r) -> println("$l = $r") }
        }
    }

    private fun rewrite(
        srcArg: LExpr, solArg: LExpr,
        srcTr: Trace, solTr: Trace,
    ): Pair<LExpr, LExpr> {
        if (solArg.isLiteral()) return srcArg to solArg
        if (isTraceArgument(solArg, solTr)) return srcArg to solArg

        if (solArg is LUnOp && reverseMap1.containsKey(solArg.op)) {
            val revOp = reverseMap1[solArg.op]!!
            val newSrc = LUnOp(revOp, srcArg)
            val newSol = solArg.arg
            return rewrite(newSrc, newSol, srcTr, solTr)
        }
        if (solArg is LBinOp) {
            val revOp = findRule(solArg.op, solArg.type()) ?: return srcArg to solArg

            val leftVars = mutableSetOf<LVar>()
            val rightVars = mutableSetOf<LVar>()
            solArg.left.collectVars(leftVars)
            solArg.right.collectVars(rightVars)
            val traceArgs = solTr.args.map { it.name }.toSet()
            val actionRes = solTr.actions.map { it.name }.toSet()
            leftVars.retainAll(traceArgs + actionRes)
            rightVars.retainAll(traceArgs + actionRes)
            if (leftVars.isEmpty() == rightVars.isEmpty()) {
                return srcArg to solArg
            } else if (leftVars.isNotEmpty()) {
                val (newSrc, newSol) = revOp.ruleLeft(srcArg, solArg)
                return rewrite(newSrc, newSol, srcTr, solTr)
            } else {
                val (newSrc, newSol) = revOp.ruleRight(srcArg, solArg)
                return rewrite(newSrc, newSol, srcTr, solTr)
            }
        }
        return srcArg to solArg
    }

    fun collectParamSolution(): ParamSolution? {
        val argMap = IdentityHashMap<LVar, LExpr>()
        val unused: MutableSet<LVar> = Collections.newSetFromMap(IdentityHashMap())
        for (trace in solution) {
            for (arg in trace.args.map { it.name }) {
                var paramExpr = searchValue(arg)
                if (paramExpr == null && !containsArg(arg)) {
                    paramExpr = arg.type().defaultValue()
                    unused.add(arg)
                }
                argMap[arg] = paramExpr ?: return null
            }
        }
        val conditions = mutableListOf<LExpr>()
        for (cond in source.conditions) {
            val replacedCond = cond.replaceVar(sourceActRes::contains, this::searchValue) ?: return null
            conditions.add(replacedCond)
        }
        val result: LExpr? =
            if (source.result != null)
                source.result!!.value.replaceVar(sourceActRes::contains, this::searchValue) ?: return null
            else null
        return ParamSolution(source, traceSolution.divide(), conditions, result, argMap, unused)
    }

    private fun searchValue(expr: LVar): LExpr? {
        val visited = mutableSetOf<Pair<LExpr, LExpr>>()
        var curExpr: LExpr = expr
        while (true) {
            val eq = equations.find { !visited.contains(it) && (it.first == curExpr || it.second == curExpr) }
            if (eq == null) return null
            val another = if (eq.first == curExpr) eq.second else eq.first
            if (another.isLiteral()) return another
            if (another is LVar) {
                if (sourceArgs.contains(another) || solTraceResults.contains(another)) return another
                visited.add(eq)
                curExpr = another
            } else {
                return another.replaceVar(sourceActRes::contains, this::searchValue)
            }
        }
    }

    private fun containsArg(arg: LVar): Boolean {
        return equations.any { it.first.containsVar(arg) || it.second.containsVar(arg) }
    }

    private fun isTraceArgument(variable: LExpr, trace: Trace) =
        variable is LVar && trace.args.any { it.name == variable }

    private fun isActionResult(variable: LExpr, trace: Trace) =
        variable is LVar && trace.actions.any { it.name == variable }

}

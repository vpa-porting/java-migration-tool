package porting.solver.param

import io.ksmt.solver.KSolverStatus
import io.ksmt.solver.z3.KZ3Solver
import porting.PRINT_DEBUG
import porting.ParamSolutionsMap
import porting.TraceParamSolutionsMap
import porting.TraceSolutionsMap
import porting.solver.trace.TraceSolution
import kotlin.time.Duration.Companion.seconds

object ParamSolver {

    fun solve(tracesSolutionMap: TraceSolutionsMap): TraceParamSolutionsMap? {
        val traceParamSolutionsMap = TraceParamSolutionsMap()
        for ((source, solutions) in tracesSolutionMap) {
            val paramSolutions = solve(solutions)
            if (paramSolutions.isNotEmpty()) {
                traceParamSolutionsMap[source] = paramSolutions
            } else {
                println("No param solutions for trace solution $solutions")
                return null
            }
        }
        return traceParamSolutionsMap
    }

    private fun solve(traceSolutions: List<TraceSolution>): ParamSolutionsMap {
        val paramSolutionMap = ParamSolutionsMap()
        for (traceSolution in traceSolutions) {
            val paramSolution = solve(traceSolution)
            if (PRINT_DEBUG) println("===============")
            if (paramSolution == null) {
                continue
            }
            paramSolutionMap[traceSolution] = paramSolution
        }
        return paramSolutionMap
    }

    private fun solve(solution: TraceSolution): ParamSolution? {
        val paramCtx = ParamCodingCtx(solution)
        paramCtx.mkParamFormula()
        with(paramCtx.ctx) {
            val actionsEqs = paramCtx.actionEquations
                .map { (l, r) -> l.toSMT(this).smt() eq r.toSMT(this).smt() }
            val resultsEqs = paramCtx.resultEquations
                .map { (l, r) -> l.toSMT(this).smt() eq r.toSMT(this).smt() }
            val argsEqs = paramCtx.argsEquations
                .map { (l, r) -> l.toSMT(this).smt() eq r.toSMT(this).smt() }

            KZ3Solver(this).use { solver ->
                solver.assert(mkAnd(actionsEqs + resultsEqs + argsEqs))

                val result = solver.check(15.seconds)
                if (PRINT_DEBUG) println(result)
                if (result == KSolverStatus.SAT) {
                    val paramSol = paramCtx.collectParamSolution()
                    if (PRINT_DEBUG) {
                        println("Param solution: ")
                        paramSol?.print() ?: println("null")
                    }
                    return paramSol
                } else {
                    if (result == KSolverStatus.UNKNOWN) println(solver.reasonOfUnknown())
                    return null
                }
            }
        }
    }
}

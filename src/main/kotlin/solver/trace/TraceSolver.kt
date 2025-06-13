package porting.solver.trace

import io.ksmt.solver.KSolverStatus
import io.ksmt.solver.z3.KZ3Solver
import porting.lsl.LibFunction
import porting.*
import porting.ssa.Trace

object TraceSolver {

    fun solve(
        sourceFunction: LibFunction,
        anotherFunctions: List<LibFunction>
    ): TraceSolutionsMap? {
        val sources = sourceFunction.traces
        val traces = anotherFunctions.flatMap { it.traces }
        val traceSolutionsMap = TraceSolutionsMap()
        for (source in sources) {
            val solutions = solve(source, traces)
            if (solutions.isNotEmpty()) {
                traceSolutionsMap[source] = solutions
            } else {
                println("No trace solutions for trace $source")
                return null
            }
        }
        return traceSolutionsMap
    }

    private fun solve(source: Trace, traces: List<Trace>): List<TraceSolution> {
        val actionToNum = (source.actions + traces.flatMap { it.actions })
            .map { it.value.actionName }
            .distinct()
            .mapIndexed { i, s -> s to i }
            .toMap()

        for (solutionLength in 1..MAX_SOLUTION_LENGTH) {
            val sourceCtx = TraceCodingCtx(actionToNum, solutionLength, source, traces)
            val formulas = sourceCtx.mkTraceFormula()
            val ctx = sourceCtx.ctx

//            val formula = ctx.mkUniversalQuantifier(
//                ctx.mkAnd(formulas),
//                sourceCtx.sourceF.args.map { it.variable.decl }
//            )
            val formula = ctx.mkAnd(formulas)

            KZ3Solver(ctx).use { solver ->
                solver.assert(formula)
                var result = solver.check()
                if (result == KSolverStatus.SAT) {
                    val traceSolutions = mutableListOf<TraceSolution>()
                    while (result == KSolverStatus.SAT) {
                        val solutionIndices = sourceCtx.currentSolution(solver.model())
                        traceSolutions.add(sourceCtx.currentSolution(solutionIndices))
                        solver.assert(sourceCtx.mkPrevSolutionNeg(ctx, solutionIndices))
                        result = solver.check()
                    }
                    return traceSolutions
                }
            }
        }
        return listOf()
    }
}
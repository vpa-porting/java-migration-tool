package porting.solver

import porting.*
import porting.expr.LNull
import porting.lsl.LibFunction
import porting.solver.param.ParamSolution
import porting.solver.param.ParamSolver
import porting.solver.trace.TraceSolver
import kotlin.collections.component1
import kotlin.collections.component2
import kotlin.collections.iterator

object Solver {

    fun solve(
        sourceFunction: LibFunction,
        anotherFunctions: List<LibFunction>
    ): List<BaseTraceNode>? {
        val tracesSolutionMap = TraceSolver.solve(sourceFunction, anotherFunctions) ?: return null
        if (PRINT_DEBUG) printSolutions(tracesSolutionMap)
        val paramSolutions = ParamSolver.solve(tracesSolutionMap) ?: return null
        val startTrace = paramSolutions.keys.find { it.traceNumber == 0 } ?: throw IllegalStateException()
        val startParamSolutions = paramSolutions.values
            .flatMap { map -> map.filter { it.key.source == startTrace }.values }
        val result = startParamSolutions.map { collect(it, paramSolutions, 0) }.flatten()
        return result
    }

    private fun collect(
        current: ParamSolution,
        paramSolutions: TraceParamSolutionsMap,
        conditionInd: Int,
    ): List<BaseTraceNode> {
        if (current.conditions.size == conditionInd)
            return listOf(TraceNode(current, conditionInd, EmptyNode))

        val condition = current.conditions[conditionInd]
        val collectedTrue = collect(current, paramSolutions, conditionInd + 1)
        val collectedFalse = paramSolutions.findByParentTraceInd(current.source.traceNumber)
            .filter { it.source.conditionInd == conditionInd }
            .filter { match(current, it, conditionInd) }
            .map { collect(it, paramSolutions, conditionInd + 1) }
            .flatten()

        val condNodes = collectedTrue.cartesianProduct(collectedFalse)
            .map { CondNode(condition, it.first, it.second) }

        return condNodes.map { TraceNode(current, conditionInd, it) }
    }

    private fun TraceParamSolutionsMap.findByTraceInd(ind: Int): List<ParamSolution> {
        return this.filter { (k, _) -> k.traceNumber == ind }.flatMap { (_, v) -> v.values }
    }

    private fun TraceParamSolutionsMap.findByParentTraceInd(ind: Int): List<ParamSolution> {
        return this.filter { (k, _) -> k.parentTrace == ind }.flatMap { (_, v) -> v.values }
    }

//    fun solve(
//
//    ): List<List<ParamSolution>>? {
//        val tracesSolutionMap = TraceSolver.solve(sourceFunction, anotherFunctions) ?: return null
//        printSolutions(tracesSolutionMap)
//        val paramSolutions = ParamSolver.solve(tracesSolutionMap) ?: return null
//        val collected = collect(paramSolutions)
//        collected.onEach { l ->
//            l.forEach { t -> println(t) }
//            println()
//        }
//        return collected
//    }

    private fun printSolutions(tracesSolutionMap: TraceSolutionsMap) {
        for ((source, solutions) in tracesSolutionMap) {
            println("Found ${solutions.size} solutions for trace $source:")
            for (solution in solutions) println("\t${solution.solution}")
        }
        println()
    }

    private fun match(
        prev: ParamSolution,
        cur: ParamSolution,
        conditionInd: Int
    ): Boolean {
//        val preLast = min(prev.source.conditionInd, cur.source.conditionInd) + 1
        val preLast = conditionInd + 1
        val prevSl = prev.traceSeqs.subList(0, preLast)
        val curSl = cur.traceSeqs.subList(0, preLast)
        if (!sameTraceSeqs(prevSl, curSl)) return false

        val prevLastTraceSeq = prevSl.last()
        val curLastTraceSeq = curSl.last()
        val prevArgs = prevLastTraceSeq.flatMap { it.args }.map { it.name }
        val curArgs = curLastTraceSeq.flatMap { it.args }.map { it.name }
        for (argInd in prevArgs.indices) {
            val prevArg = prevArgs[argInd]
            val curArg = curArgs[argInd]
            if (prev.unused.contains(prevArg)) continue
            if (cur.unused.contains(curArg)) continue
            val prevArgValue = prev.argsMap[prevArg]
            val curArgValue = cur.argsMap[curArg]
            if (prevArgValue != curArgValue) return false
        }
        return true
    }
}
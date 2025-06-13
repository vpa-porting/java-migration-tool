package porting.ssa

import porting.copy
import porting.expr.LExpr
import porting.expr.LVar

class VarMap(
    val arguments: MutableSet<LVar> = mutableSetOf(),
    val actionResults: MutableSet<LVar> = mutableSetOf(),
    val expressions: MutableMap<LVar, LExpr> = mutableMapOf()
) {
    operator fun get(variable: LVar): LExpr {
        if (arguments.contains(variable) || actionResults.contains(variable)) return variable
        else if (expressions.containsKey(variable)) return expressions[variable]!!.normalize(this)
        throw IllegalStateException("Cannot find variable $variable")
    }

    fun copy() = VarMap(arguments.copy(), actionResults.copy(), expressions.copy())
}
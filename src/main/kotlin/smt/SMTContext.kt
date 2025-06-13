package porting.smt

import io.ksmt.KContext
import io.ksmt.decl.KFuncDecl
import io.ksmt.expr.KApp
import io.ksmt.expr.KExpr
import io.ksmt.expr.KFpRoundingMode
import io.ksmt.sort.*
import porting.KBoolExpr
import porting.SEP

class SMTContext : KContext() {

    var iteration: Int = -1

    private val variableMap: MutableMap<Pair<String, Int>, KApp<KSort, *>> = mutableMapOf()
    private val stringMap: MutableMap<String, KExpr<KUninterpretedSort>> = mutableMapOf()

    val anySort = mkUninterpretedSort("Any")
    val nothingSort = mkUninterpretedSort("Nothing")
    val voidSort = mkUninterpretedSort("void")
    val nullSort = mkUninterpretedSort("null")
    val stringSort = mkUninterpretedSort("string")

    val nullConst: KExpr<KUninterpretedSort> = mkConst("null", nullSort)
    val voidConst: KExpr<KUninterpretedSort> = mkConst("void", voidSort)

    val roundingMode: KExpr<KFpRoundingModeSort> = mkFpRoundingModeExpr(KFpRoundingMode.RoundNearestTiesToEven)

    private val funcDecls: MutableList<KFuncDecl<KSort>> = mutableListOf()
    private val structSortMap = mutableMapOf<String, KUninterpretedSort>()
    val overflowChecks = mutableListOf<KBoolExpr>()

    operator fun get(name: String): KApp<KSort, *>? = variableMap[name to iteration]

    fun findFunctionDecl(actionName: String, returnSort: KSort, paramSorts: List<KSort>): KFuncDecl<KSort> {
        return funcDecls.find { it.name == actionName && it.sort == returnSort && it.argSorts == paramSorts }
            ?: mkFuncDecl(actionName, returnSort, paramSorts).also { funcDecls.add(it) }
    }

    fun mkVar(name: String, sort: KSort): KApp<KSort, *> {
        if (variableMap.containsKey(name to iteration)) throw IllegalStateException()
        val varName = "$name$SEP$iteration"
        return mkConst(varName, sort).also { variableMap[name to iteration] = it }
    }

    fun contains(name: String): Boolean = get(name) != null

    fun mkStructSort(str: String): KUninterpretedSort {
        if (!structSortMap.containsKey(str)) {
            structSortMap[str] = mkUninterpretedSort(str)
        }
        return structSortMap[str]!!
    }

    fun mkString(str: String): KExpr<KUninterpretedSort> {
        val key = "\"$str\""
        if (stringMap.containsKey(key)) return stringMap[key]!!
        val expr = mkConst(key, stringSort)
        stringMap[key] = expr
        return expr
    }
}

package porting.smt

import io.ksmt.expr.KExpr
import io.ksmt.sort.KSort
import porting.KBoolExpr
import porting.expr.LActionCall
import porting.expr.LExpr

open class ExprSMT(
    open val expr: LExpr,
    protected open val smt: KExpr<out KSort>
) {
    fun smt() = smt as KExpr<KSort>
    fun bool() = smt as KBoolExpr
    fun sort() = smt.sort

    override fun toString() = expr.toString()
}

class ActionSMT(
    override val expr: LActionCall,
    override val smt: KExpr<out KSort>,
    val args: List<ExprSMT>
) : ExprSMT(expr, smt)

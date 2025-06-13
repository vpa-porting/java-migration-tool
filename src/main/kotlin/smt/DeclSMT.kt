package porting.smt

import io.ksmt.expr.KApp
import io.ksmt.sort.KSort
import porting.KBoolExpr
import porting.ssa.DeclStat

open class DeclSMT(
    open val decl: DeclStat,
    open val variable: KApp<KSort, *>
) {
    override fun toString() = decl.toString()
}

open class AssignSMT(
    override val decl: DeclStat,
    override val variable: KApp<KSort, *>,
    open val expr: ExprSMT,
    open val eq: KBoolExpr
) : DeclSMT(decl, variable) {
    override fun toString() = "$decl = $expr"
}

class ResultSMT(
    decl: DeclStat,
    variable: KApp<KSort, *>,
    expr: ExprSMT,
    eq: KBoolExpr
) : AssignSMT(decl, variable, expr, eq)

class ActionCallSMT(
    decl: DeclStat,
    variable: KApp<KSort, *>,
    override val expr: ActionSMT,
    eq: KBoolExpr
) : AssignSMT(decl, variable, expr, eq) {
    val action get() = expr
}

package porting.ssa

import porting.expr.LActionCall
import porting.expr.LExpr
import porting.expr.LVar
import porting.expr.sort
import porting.smt.*
import porting.type


open class DeclStat(
    val name: LVar
) {

    open fun toTraceStep(): Trace.Step {
        throw IllegalStateException()
    }

    open fun toDot() = "${name.name}: ${name.type.type()}"
    open fun toSMT(ctx: SMTContext): DeclSMT {
        val name = name.name
        val type = this.name.type
        val sort = type?.sort(ctx) ?: ctx.voidSort
        val variable = ctx[name] ?: ctx.mkVar(name, sort)
        return DeclSMT(this, variable)
    }

    override fun toString() = name.toString()
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as DeclStat
        return name == other.name
    }

    override fun hashCode(): Int {
        return name.hashCode()
    }

    open fun copy(rewriteRule: (LVar) -> LVar): DeclStat = DeclStat(rewriteRule(name))
}

class ActionCallStat(
    name: LVar,
    val value: LActionCall
) : DeclStat(name) {
    override fun toTraceStep(): Trace.Step = Trace.Action(this)

    override fun toDot() = "${name.name} = $value"
    override fun toSMT(ctx: SMTContext): ActionCallSMT {
        val name = name.name
        val type = this.name.type
        val sort = type?.sort(ctx) ?: ctx.voidSort
        val action = value.toSMT(ctx)

        val variable = ctx[name] ?: ctx.mkVar(name, sort)
        val eq = ctx.mkEq(variable, action.smt())
        return ActionCallSMT(this, variable, action, eq)
    }

    override fun copy(rewriteRule: (LVar) -> LVar) = ActionCallStat(rewriteRule(name), value.renameVar(rewriteRule))

    override fun toString() = "$name := $value"

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        if (!super.equals(other)) return false
        other as ActionCallStat
        return value == other.value
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + value.hashCode()
        return result
    }
}

open class ResultStat(
    name: LVar,
    val value: LExpr
) : DeclStat(name) {
    override fun toTraceStep(): Trace.Step = Trace.Result(this)

    override fun toDot() = "${name.name} = $value"
    override fun toSMT(ctx: SMTContext): ResultSMT {
        val name = name.name
        val type = this.name.type
        val sort = type?.sort(ctx) ?: ctx.voidSort
        val expr = value.toSMT(ctx)

        val variable = ctx[name] ?: ctx.mkVar(name, sort)
        val eq = ctx.mkEq(variable, expr.smt())
        return ResultSMT(this, variable, expr, eq)
    }

    override fun copy(rewriteRule: (LVar) -> LVar) = ResultStat(rewriteRule(name), value.renameVar(rewriteRule))

    override fun toString() = "$name = $value"
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        if (!super.equals(other)) return false
        other as ResultStat
        return value == other.value
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + value.hashCode()
        return result
    }
}
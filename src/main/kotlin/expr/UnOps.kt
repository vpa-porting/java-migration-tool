package porting.expr

import io.ksmt.expr.KExpr
import io.ksmt.sort.KBoolSort
import io.ksmt.sort.KBvSort
import io.ksmt.sort.KFpSort
import io.ksmt.sort.KSort
import porting.smt.SMTContext

object UnOps {

    @Suppress("unchecked_cast")
    fun mkOp(
        ctx: SMTContext,
        sign: String,
        arg: KExpr<out KSort>
    ): KExpr<*> {
        if (arg.sort is KBvSort) {
            arg as KExpr<KBvSort>
            return mkBvOp(ctx, sign, arg)
        }
        if (arg.sort is KFpSort) {
            arg as KExpr<KFpSort>
            return mkFpOp(ctx, sign, arg)
        }
        if (arg.sort is KBoolSort) {
            arg as KExpr<KBoolSort>
            return mkBoolOp(ctx, sign, arg)
        }
        throw IllegalArgumentException("Illegal unary op: $sign ${arg.sort}")
    }

    private fun mkBvOp(
        ctx: SMTContext,
        sign: String,
        arg: KExpr<KBvSort>
    ): KExpr<KBvSort> {
        return when (sign) {
            "+" -> arg
            "-" -> ctx.mkBvNegationExpr(arg).also {
                ctx.overflowChecks.add(ctx.mkBvNegationNoOverflowExpr(arg))
            }

            "~" -> ctx.mkBvNotExpr(arg)

            else -> throw IllegalArgumentException()
        }
    }

    private fun mkFpOp(
        ctx: SMTContext,
        sign: String,
        arg: KExpr<KFpSort>
    ): KExpr<KFpSort> {
        return when (sign) {
            "+" -> arg
            "-" -> ctx.mkFpNegationExpr(arg)
            else -> throw IllegalArgumentException()
        }
    }

    private fun mkBoolOp(
        ctx: SMTContext,
        sign: String,
        arg: KExpr<KBoolSort>
    ): KExpr<KBoolSort> {
        return when (sign) {
            "!" -> ctx.mkNot(arg)
            else -> throw IllegalArgumentException()
        }
    }
}

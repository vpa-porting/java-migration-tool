package porting.expr

import io.ksmt.expr.KExpr
import io.ksmt.sort.*
import org.jetbrains.research.libsl.type.*
import porting.LSL_CTX
import porting.smt.SMTContext

object BinOps {

    private val intOps = setOf("+", "-", "*", "/", "%", "^", "|", "&", ">>", ">>>", "<<", "<<<")
    private val arithOps = setOf("+", "-", "*", "/")
    private val cmpOps = setOf("==", "!=", "<", "<=", ">", ">=")
    private val boolOps = setOf("==", "!=", "&&", "||")
    private val intTypes: Set<Class<*>> = mutableSetOf<Class<*>>().apply {
        add(Int8Type::class.java)
        add(Int16Type::class.java)
        add(Int32Type::class.java)
        add(Int64Type::class.java)
        add(UnsignedInt8Type::class.java)
        add(UnsignedInt16Type::class.java)
        add(UnsignedInt32Type::class.java)
        add(UnsignedInt64Type::class.java)
    }
    private val arithTypes: Set<Class<*>> = mutableSetOf<Class<*>>().apply {
        add(Int8Type::class.java)
        add(Int16Type::class.java)
        add(Int32Type::class.java)
        add(Int64Type::class.java)
        add(UnsignedInt8Type::class.java)
        add(UnsignedInt16Type::class.java)
        add(UnsignedInt32Type::class.java)
        add(UnsignedInt64Type::class.java)
        add(Float32Type::class.java)
        add(Float64Type::class.java)
        add(RealType::class.java)
    }

    @Suppress("unchecked_cast")
    fun mkOp(
        ctx: SMTContext,
        sign: String,
        left: KExpr<out KSort>,
        right: KExpr<out KSort>
    ): KExpr<out KSort> {
        if (left.sort is KBvSort && right.sort is KBvSort) {
            left as KExpr<KBvSort>
            right as KExpr<KBvSort>
            return mkBvOp(ctx, sign, left, right)
        }
        if (left.sort is KFpSort && right.sort is KFpSort) {
            left as KExpr<KFpSort>
            right as KExpr<KFpSort>
            return mkFpOp(ctx, sign, left, right)
        }
        if (left.sort is KFpSort && right.sort is KBvSort) {
            left as KExpr<KFpSort>
            right as KExpr<KBvSort>
            val rightBv = ctx.mkBvToFpExpr(left.sort, ctx.roundingMode, right, true)
            return mkFpOp(ctx, sign, left, rightBv)
        }
        if (right.sort is KFpSort && left.sort is KBvSort) {
            left as KExpr<KBvSort>
            right as KExpr<KFpSort>
            val leftBv = ctx.mkBvToFpExpr(right.sort, ctx.roundingMode, left, true)
            return mkFpOp(ctx, sign, leftBv, right)
        }
        if (left.sort is KBoolSort && right.sort is KBoolSort) {
            left as KExpr<KBoolSort>
            right as KExpr<KBoolSort>
            return mkBoolOp(ctx, sign, left, right)
        }
        if (sign == "==") {
            left as KExpr<KSort>
            right as KExpr<KSort>
            return ctx.mkEq(left, right)
        }
        if (sign == "!=") {
            left as KExpr<KSort>
            right as KExpr<KSort>
            return ctx.mkNot(ctx.mkEq(left, right))
        }
        throw IllegalArgumentException("Illegal/Unsupported binary operation: ${left.sort} $sign ${right.sort}")
    }

    fun type(left: Type?, op: String, right: Type?): Type {
        if (left == null || right == null) throw IllegalArgumentException("Binary operation with void")
        val leftCl = left::class.java
        val rightCl = right::class.java
        if (left is BoolType || right is BoolType) {
            require(left is BoolType && right is BoolType && op in boolOps) {
                "Unsupported boolean operation: $left $op $right"
            }
            return BoolType(LSL_CTX)
        }
        if ((left is CharType || right is CharType) &&
            (left is CharType || intTypes.contains(leftCl)) && (right is CharType || intTypes.contains(rightCl))) {
            if (cmpOps.contains(op)) return BoolType(LSL_CTX)
            if (intOps.contains(op)) return if (left is Int64Type || right is Int64Type) Int64Type(LSL_CTX) else Int32Type(LSL_CTX)
        }
        if (intTypes.contains(leftCl) && intOps.contains(op)) return left
        if (arithTypes.contains(leftCl) && arithOps.contains(op)) return left
        if (arithTypes.contains(leftCl) && cmpOps.contains(op)) return BoolType(LSL_CTX)
        if (left is BoolType && right is BoolType && boolOps.contains(op)) return BoolType(LSL_CTX)
        throw IllegalArgumentException()
    }

    private fun mkBvOp(
        ctx: SMTContext,
        sign: String,
        left: KExpr<KBvSort>,
        right: KExpr<KBvSort>
    ): KExpr<out KSort> {
        return when (sign) {
            "+" -> ctx.mkBvAddExpr(left, right).also {
                ctx.overflowChecks.add(ctx.mkBvAddNoOverflowExpr(left, right, true))
            }

            "-" -> ctx.mkBvSubExpr(left, right).also {
                ctx.overflowChecks.add(ctx.mkBvSubNoOverflowExpr(left, right))
            }

            "*" -> ctx.mkBvMulExpr(left, right).also {
                ctx.overflowChecks.add(ctx.mkBvMulNoOverflowExpr(left, right, true))
            }

            "/" -> ctx.mkBvSignedDivExpr(left, right)
            "%" -> ctx.mkBvSignedModExpr(left, right)

            "^" -> ctx.mkBvXorExpr(left, right)
            "&" -> ctx.mkBvAndExpr(left, right)
            "|" -> ctx.mkBvOrExpr(left, right)

            "==" -> ctx.mkEq(left, right)
            "!=" -> ctx.mkNot(ctx.mkEq(left, right))
            "<" -> ctx.mkBvSignedLessExpr(left, right)
            ">" -> ctx.mkBvSignedGreaterExpr(left, right)
            "<=" -> ctx.mkBvSignedLessOrEqualExpr(left, right)
            ">=" -> ctx.mkBvSignedGreaterOrEqualExpr(left, right)

            ">>" -> ctx.mkBvLogicalShiftRightExpr(left, right)
            "<<" -> ctx.mkBvShiftLeftExpr(left, right)
            ">>>" -> TODO("Not supported yet")
            "<<<" -> TODO("Not supported yet")

            else -> throw IllegalArgumentException()
        }
    }

    private fun mkFpOp(
        ctx: SMTContext,
        sign: String,
        left: KExpr<KFpSort>,
        right: KExpr<KFpSort>
    ): KExpr<out KSort> {
        return when (sign) {
            "+" -> ctx.mkFpAddExpr(ctx.roundingMode, left, right)
            "-" -> ctx.mkFpSubExpr(ctx.roundingMode, left, right)
            "*" -> ctx.mkFpMulExpr(ctx.roundingMode, left, right)
            "/" -> ctx.mkFpDivExpr(ctx.roundingMode, left, right)

            "==" -> ctx.mkEq(left, right)
            "!=" -> ctx.mkNot(ctx.mkEq(left, right))
            "<" -> ctx.mkFpLessExpr(left, right)
            ">" -> ctx.mkFpGreaterExpr(left, right)
            "<=" -> ctx.mkFpLessOrEqualExpr(left, right)
            ">=" -> ctx.mkFpGreaterOrEqualExpr(left, right)

            else -> throw IllegalArgumentException()
        }
    }

    private fun mkBoolOp(
        ctx: SMTContext,
        sign: String,
        left: KExpr<KBoolSort>,
        right: KExpr<KBoolSort>,
    ): KExpr<out KSort> {
        return when (sign) {
            "&&" -> ctx.mkAnd(left, right)
            "||" -> ctx.mkOr(left, right)

            "==" -> ctx.mkEq(left, right)
            "!=" -> ctx.mkNot(ctx.mkEq(left, right))
            else -> throw IllegalArgumentException()
        }
    }
}

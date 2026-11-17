package porting.expr

import io.ksmt.expr.KExpr
import io.ksmt.sort.KArraySort
import io.ksmt.sort.KBvSort
import io.ksmt.sort.KIntSort
import io.ksmt.sort.KSort
import org.jetbrains.research.libsl.type.*
import porting.LSL_CTX
import porting.SEP
import porting.gen.toJavaType
import porting.isInt
import porting.mkTmpName
import porting.smt.ActionSMT
import porting.smt.ExprSMT
import porting.smt.SMTContext
import porting.ssa.VarMap

sealed class LExpr {
    open fun renameVar(rule: (LVar) -> LVar): LExpr = this
    open fun normalize(varMap: VarMap) = this
    abstract fun isLiteral(): Boolean
    abstract fun toSMT(ctx: SMTContext): ExprSMT
    abstract fun type(): Type?
    abstract fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr?
    abstract fun collectVars(vars: MutableSet<LVar>)
    abstract fun toJavaStr(varMap: Map<LVar, String>): String
    fun containsVar(lvar: LVar) = vars().contains(lvar)
    fun vars(): MutableSet<LVar> {
        val collected = mutableSetOf<LVar>()
        collectVars(collected)
        return collected
    }
}

// type == null <==> type == void
data class LVar(var name: String, val type: Type?) : LExpr() {

    override fun toString() = name
    override fun renameVar(rule: (LVar) -> LVar) = rule(this)
    override fun normalize(varMap: VarMap): LExpr = varMap[this]
    override fun isLiteral() = false

    override fun toSMT(ctx: SMTContext): ExprSMT {
        val variable = ctx[name] ?: throw IllegalStateException("Can't find var: $name")
        return ExprSMT(this, variable)
    }

    override fun type(): Type? = type
    override fun equals(other: Any?): Boolean {
        return other is LVar && name == other.name
    }

    override fun hashCode(): Int {
        return javaClass.hashCode()
    }

    override fun collectVars(vars: MutableSet<LVar>) {
        vars.add(this)
    }

    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr? {
        return if (predicate(this)) rule(this) else this
    }

    override fun toJavaStr(varMap: Map<LVar, String>): String {
        return if (varMap.containsKey(this)) varMap[this]!!
        else {
            val split = name.split(SEP)
            for (name in split.reversed()) {
                if (name.isInt().not()) return name
            }
            throw Exception()
        }
    }
}

data object LNull : LExpr() {
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.nullConst)
    override fun isLiteral() = true

    override fun toString(): String = "null"

    override fun type(): Type = NullType(false, mutableListOf(), LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>) = "null"
}

data class LUnOp(val op: String, val arg: LExpr) : LExpr() {
    override fun toString() = "$op$arg"
    override fun renameVar(rule: (LVar) -> LVar) = LUnOp(op, arg.renameVar(rule)).checkBoolNeg()
    override fun normalize(varMap: VarMap): LExpr = LUnOp(op, arg.normalize(varMap)).checkBoolNeg()
    override fun isLiteral() = false

    override fun toSMT(ctx: SMTContext): ExprSMT {
        val arg = arg.toSMT(ctx)
        return ExprSMT(this, UnOps.mkOp(ctx, op, arg.smt()))
    }

    override fun type(): Type? = arg.type()

    override fun collectVars(vars: MutableSet<LVar>) {
        arg.collectVars(vars)
    }

    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr? {
        val rewrote = arg.replaceVar(predicate, rule) ?: return null
        return LUnOp(op, rewrote).checkBoolNeg()
    }

    override fun toJavaStr(varMap: Map<LVar, String>) = "$op${arg.toJavaStr(varMap)}"
}

data class LBinOp(val left: LExpr, val op: String, val right: LExpr) : LExpr() {
    override fun toString() = "($left $op $right)"
    override fun renameVar(rule: (LVar) -> LVar) = LBinOp(left.renameVar(rule), op, right.renameVar(rule))
    override fun normalize(varMap: VarMap): LExpr = LBinOp(left.normalize(varMap), op, right.normalize(varMap))
    override fun isLiteral() = false

    override fun toSMT(ctx: SMTContext): ExprSMT {
        val left = left.toSMT(ctx)
        val right = right.toSMT(ctx)
        var a: KExpr<out KSort> = left.smt()
        var b: KExpr<out KSort> = right.smt()
        // Java promotes char operands to int (or long), zero-extending char.
        // This also makes comparisons above U+7FFF agree with Java semantics.
        if (a.sort is KBvSort && b.sort is KBvSort &&
            (this.left.type() is CharType || this.right.type() is CharType)) {
            val width = maxOf(32, (a.sort as KBvSort).sizeBits.toInt(), (b.sort as KBvSort).sizeBits.toInt())
            @Suppress("UNCHECKED_CAST")
            fun promote(expr: KExpr<out KSort>, unsigned: Boolean): KExpr<out KSort> {
                val value = expr as KExpr<KBvSort>
                val extra = width - value.sort.sizeBits.toInt()
                return if (extra == 0) value else if (unsigned) ctx.mkBvZeroExtensionExpr(extra, value)
                else ctx.mkBvSignExtensionExpr(extra, value)
            }
            a = promote(a, this.left.type() is CharType)
            b = promote(b, this.right.type() is CharType)
        }
        return ExprSMT(this, BinOps.mkOp(ctx, op, a, b))
    }

    override fun type(): Type {
        val leftType = left.type()
        val rightType = right.type()
        return BinOps.type(leftType, op, rightType)
    }

    override fun collectVars(vars: MutableSet<LVar>) {
        left.collectVars(vars)
        right.collectVars(vars)
    }

    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr? {
        val rewroteL = left.replaceVar(predicate, rule) ?: return null
        val rewroteR = right.replaceVar(predicate, rule) ?: return null
        return LBinOp(rewroteL, op, rewroteR)
    }

    override fun toJavaStr(varMap: Map<LVar, String>): String {
        // Enum-typed values are modeled as their declared ordinal ints for SMT purposes (see
        // PreBuilder.enumConstantValue - `Hex.HexCase.UPPER` resolves to a bare int literal, e.g.
        // `1`), which is sound for the solver but not valid Java: a real `HexCase`-typed variable
        // can't be compared against `int` directly. Route it through `.ordinal()` only in the
        // generated text, not in the SMT encoding. `.type()` is only meaningful (and only safe -
        // BinOps.type() throws for some operator/operand shapes that never needed a combined type
        // before) for leaf-ish expressions here, so failures just mean "not an enum".
        val leftStr = left.toJavaStr(varMap).let { if (runCatching { left.type() }.getOrNull() is EnumType) "$it.ordinal()" else it }
        val rightStr = right.toJavaStr(varMap).let { if (runCatching { right.type() }.getOrNull() is EnumType) "$it.ordinal()" else it }
        return "($leftStr $op $rightStr)"
    }
}

data class LBool(val value: Boolean) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBool(value))
    override fun isLiteral() = true
    override fun type(): Type = BoolType(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LChar(val value: Char) : LExpr() {
    override fun toString(): String = "'$value'"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value.code.toShort()))
    override fun isLiteral() = true
    override fun type(): Type = CharType(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = "(char) 0x%04x".format(value.code)
}

data class LFloat(val value: Double) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkFp64(value))
    override fun isLiteral() = true
    override fun type(): Type = Float64Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LInt(val value: Int) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value))
    override fun isLiteral() = true
    override fun type(): Type = Int32Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LUInt8(val value: UByte) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value.toByte()))
    override fun isLiteral() = true
    override fun type(): Type = UnsignedInt8Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LUInt16(val value: UShort) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value.toShort()))
    override fun isLiteral() = true
    override fun type(): Type = UnsignedInt16Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LUInt32(val value: UInt) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value.toInt()))
    override fun isLiteral() = true
    override fun type(): Type = UnsignedInt32Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LUInt64(val value: ULong) : LExpr() {
    override fun toString(): String = "$value"
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkBv(value.toLong()))
    override fun isLiteral() = true
    override fun type(): Type = UnsignedInt64Type(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = value.toString()
}

data class LString(val value: String) : LExpr() {
    override fun toString() = "\"$value\""
    override fun toSMT(ctx: SMTContext): ExprSMT = ExprSMT(this, ctx.mkString(value))
    override fun isLiteral() = true
    override fun type(): Type = StringType(LSL_CTX)
    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?) = this
    override fun collectVars(vars: MutableSet<LVar>) {}
    override fun toJavaStr(varMap: Map<LVar, String>): String = toString()
}

data class LArray(val array: List<LExpr>) : LExpr() {
    override fun toString() = array.joinToString(", ", "[", "]")
    override fun renameVar(rule: (LVar) -> LVar) = LArray(array.map { it.renameVar(rule) })
    override fun toSMT(ctx: SMTContext): ExprSMT {
        val exprs = array.map { it.toSMT(ctx) }
        val sort = exprs[0].sort()
        var arrSMT: KExpr<KArraySort<KSort, KIntSort>> = ctx.mkConst(mkTmpName(), ctx.mkArraySort(sort, ctx.intSort))
        for (exprInd in exprs.indices) {
            arrSMT = ctx.mkArrayStore(arrSMT, exprs[exprInd].smt(), ctx.mkIntNum(exprInd))
        }
        return ExprSMT(this, arrSMT)
    }

    override fun isLiteral() = true
    override fun type(): Type = ArrayType(false, mutableListOf(), LSL_CTX)
    override fun collectVars(vars: MutableSet<LVar>) {
        array.forEach { it.collectVars(vars) }
    }

    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr? {
        val newArray = mutableListOf<LExpr>()
        for (a in array) {
            val rewrote = a.replaceVar(predicate, rule) ?: return null
            newArray.add(rewrote)
        }
        return LArray(newArray)
    }

    override fun toJavaStr(varMap: Map<LVar, String>): String {
        val type = type().toJavaType()
        return "new $type[]{${array.map { it.toJavaStr(varMap) }}}"
    }
}

data class LActionCall(
    val actionName: String,
    val actionType: Type?,
    val actionParamTypes: List<Type>,
    val args: List<LExpr>
) : LExpr() {
    override fun toString() = "action ${actionName}(${args.joinToString(", ")})"
    override fun renameVar(rule: (LVar) -> LVar) =
        LActionCall(actionName, actionType, actionParamTypes, args.map { it.renameVar(rule) })

    override fun normalize(varMap: VarMap) =
        LActionCall(actionName, actionType, actionParamTypes, args.map { it.normalize(varMap) })

    override fun toSMT(ctx: SMTContext): ActionSMT {
        val returnSort = actionType?.sort(ctx) ?: ctx.voidSort
        val paramSorts = actionParamTypes.map { it.sort(ctx) }
        val funcDecl = ctx.findFunctionDecl(actionName, returnSort, paramSorts)
        val args = args.map { it.toSMT(ctx) }
        return ActionSMT(this, funcDecl.apply(args.map { it.smt() }), args)
    }

    override fun type(): Type? = actionType

    override fun isLiteral() = false

    override fun collectVars(vars: MutableSet<LVar>) {
        throw IllegalStateException("Can't invoke collectVar in LActionCall")
    }

    override fun toJavaStr(varMap: Map<LVar, String>): String {
        throw IllegalStateException("Can't invoke toJavaStr in LActionCall")
    }

    override fun replaceVar(predicate: (LVar) -> Boolean, rule: (LVar) -> LExpr?): LExpr? {
        throw IllegalStateException("Can't invoke replaceVar in LActionCall")
    }
}

fun LExpr.not() = LUnOp("!", this).checkBoolNeg()

fun LExpr.checkBoolNeg(): LExpr {
    if (this is LUnOp && this.op == "!" && this.arg is LBool) return LBool(!this.arg.value)
    return this
}

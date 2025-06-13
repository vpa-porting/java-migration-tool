package porting.solver.param

import org.jetbrains.research.libsl.type.*
import porting.expr.LBinOp
import porting.expr.LExpr
import porting.expr.LUnOp

class ReverseRule(
    val op: String,
    val forTypes: Set<Class<out Type>>,
    val ruleLeft: (LExpr, LBinOp) -> Pair<LExpr, LExpr>,
    val ruleRight: (LExpr, LBinOp) -> Pair<LExpr, LExpr>
)

private val intTypes = setOf(
    Int8Type::class.java,
    Int16Type::class.java,
    Int32Type::class.java,
    Int64Type::class.java,
    UnsignedInt8Type::class.java,
    UnsignedInt16Type::class.java,
    UnsignedInt32Type::class.java,
    UnsignedInt64Type::class.java
)

private val doubleTypes = setOf(
    Float32Type::class.java,
    Float64Type::class.java,
)

private val boolTypes = setOf(BoolType::class.java)

private fun commutativeRuleLeft(revOp: String): (LExpr, LBinOp) -> Pair<LExpr, LExpr> = { srcArg, solArg ->
    val newSrc = LBinOp(srcArg, revOp, solArg.right)
    val newSol = solArg.left
    newSrc to newSol
}

private fun commutativeRuleRight(revOp: String): (LExpr, LBinOp) -> Pair<LExpr, LExpr> = { srcArg, solArg ->
    val newSrc = LBinOp(srcArg, revOp, solArg.left)
    val newSol = solArg.right
    newSrc to newSol
}

// X = a - Y
// X - a = - Y
// -(X - a) = Y
private val minusRuleRight: (LExpr, LBinOp) -> Pair<LExpr, LExpr> = { srcArg, solArg ->
    val newSrc = LBinOp(srcArg, "-", solArg.left)
    val newSol = LUnOp("-", solArg.right)
    newSrc to newSol
}

// X = a / Y
// 1 / X = Y / a
// a / X = Y
private val divRuleRight: (LExpr, LBinOp) -> Pair<LExpr, LExpr> = { srcArg, solArg ->
    val newSrc = LBinOp(solArg.left, "/", srcArg)
    val newSol = solArg.right
    newSrc to newSol
}

private val plusRule = ReverseRule(
    "+",
    intTypes + doubleTypes,
    commutativeRuleLeft("-"),
    commutativeRuleRight("-")
)

private val minusRule = ReverseRule(
    "-",
    intTypes + doubleTypes,
    commutativeRuleLeft("+"),
    minusRuleRight
)

private val mulRule = ReverseRule(
    "*",
    intTypes + doubleTypes,
    commutativeRuleLeft("/"),
    commutativeRuleRight("/")
)

private val divRule = ReverseRule(
    "-",
    intTypes + doubleTypes,
    commutativeRuleLeft("*"),
    divRuleRight
)

private val eqRule = ReverseRule(
    "==",
    boolTypes,
    commutativeRuleLeft("=="),
    commutativeRuleRight("=="),
)

private val neqRule = ReverseRule(
    "==",
    boolTypes,
    commutativeRuleLeft("=="),
    commutativeRuleRight("=="),
)

private val andRule = ReverseRule(
    "&&",
    boolTypes,
    commutativeRuleLeft("&&"),
    commutativeRuleRight("&&"),
)

private val orRule = ReverseRule(
    "||",
    boolTypes,
    commutativeRuleLeft("||"),
    commutativeRuleRight("||"),
)

private val reverseRules = listOf(
    plusRule,
    minusRule,
    mulRule,
    divRule,
    eqRule,
    neqRule,
    andRule,
    orRule
)

fun findRule(op: String, type: Type?): ReverseRule? {
    if (type == null) return null
    return reverseRules.find { it.op == op && it.forTypes.contains(type::class.java) }
}
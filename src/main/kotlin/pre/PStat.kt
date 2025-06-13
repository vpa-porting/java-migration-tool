package porting.pre

import porting.expr.LActionCall
import porting.expr.LExpr
import porting.expr.LVar

sealed class PStat {
    abstract fun mkString(sb: StringBuilder, depth: Int)
}

open class PDecl(val name: LVar) : PStat() {
    var isResult = false
    override fun mkString(sb: StringBuilder, depth: Int) {
        sb.append("  ".repeat(depth))
        sb.append("${name.name}: ${name.type()?.name}\n")
    }
}

open class PAssign(
    name: LVar,
    open val value: LExpr
) : PDecl(name) {
    override fun mkString(sb: StringBuilder, depth: Int) {
        sb.append("  ".repeat(depth))
        sb.append("${name.name}: ${name.type()?.name} = $value\n")
    }
}

class PActionResult(
    name: LVar,
    override val value: LActionCall
) : PAssign(name, value)

data class PIf(
    val value: LExpr,
    val thenStat: List<PStat>,
    val elseStat: List<PStat>
) : PStat() {
    override fun mkString(sb: StringBuilder, depth: Int) {
        sb.append("  ".repeat(depth))
        sb.append("if ($value) {\n")
        thenStat.forEach { it.mkString(sb, depth + 1) }
        sb.append("  ".repeat(depth))
        sb.append("} else {\n")
        elseStat.forEach { it.mkString(sb, depth + 1) }
        sb.append("  ".repeat(depth))
        sb.append("}\n")
    }
}

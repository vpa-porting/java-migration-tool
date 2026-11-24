package porting.gen

import ru.vpa.porting.expr.*
import ru.vpa.porting.SEP
import ru.vpa.porting.isInt
import org.jetbrains.research.libsl.type.EnumType
import org.jetbrains.research.libsl.nodes.IntegerLiteral

/** Java-only rendering. Core expressions contain no target-language rendering methods. */
fun LExpr.toJavaStr(varMap: Map<LVar, String>): String = when (this) {
    is LVar -> varMap[this] ?: name.split(SEP).asReversed().firstOrNull { !it.isInt() }
        ?: error("Cannot render variable $name")
    LNull -> "null"
    is LUnOp -> "$op${arg.toJavaStr(varMap)}"
    is LBinOp -> "(${left.enumAwareJava(varMap)} $op ${right.enumAwareJava(varMap)})"
    is LChar -> "(char) 0x%04x".format(value.code)
    is LInt8 -> "(byte) $value"
    is LInt16 -> "(short) $value"
    is LInt64 -> "${value}L"
    is LFloat32 -> when {
        value.isNaN() -> "Float.NaN"
        value == Float.POSITIVE_INFINITY -> "Float.POSITIVE_INFINITY"
        value == Float.NEGATIVE_INFINITY -> "Float.NEGATIVE_INFINITY"
        else -> "${value}f"
    }
    is LFloat -> when {
        value.isNaN() -> "Double.NaN"
        value == Double.POSITIVE_INFINITY -> "Double.POSITIVE_INFINITY"
        value == Double.NEGATIVE_INFINITY -> "Double.NEGATIVE_INFINITY"
        else -> "${value}d"
    }
    is LBool, is LInt, is LUInt8, is LUInt16, is LUInt32, is LUInt64, is LString -> toString()
    is LArray -> "new ${type().toJavaType()}[]{${array.joinToString(", ") { it.toJavaStr(varMap) }}}"
    is LActionCall -> error("Action calls must be rendered through the Java binding adapter")
}

private fun LExpr.enumAwareJava(varMap: Map<LVar, String>): String {
    val rendered = toJavaStr(varMap)
    val type = if (this is LVar) type() as? EnumType else null
    if (type == null) return rendered
    val entries = type.entries.entries.joinToString(", ") { (name, value) ->
        val number = (value as? IntegerLiteral)?.value
            ?: error("Java enum binding requires an integer LibSL value for $name")
        "java.util.Map.entry(\"$name\", $number)"
    }
    return "java.util.Map.ofEntries($entries).get($rendered.name()).intValue()"
}

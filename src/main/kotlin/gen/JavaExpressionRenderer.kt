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
    is LBool, is LInt, is LFloat, is LUInt8, is LUInt16, is LUInt32, is LUInt64, is LString -> toString()
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

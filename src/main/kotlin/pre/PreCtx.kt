package porting.pre

import org.jetbrains.research.libsl.type.Type
import porting.SEP
import porting.expr.LVar

data class PreCtx(
    val procStack: ArrayDeque<String> = ArrayDeque(),
    val varTypes: MutableMap<String, Type?> = mutableMapOf(),
    val internal: Set<String>
) {

    operator fun get(varName: String) = search(varName)

    operator fun plusAssign(variable: LVar) {
        if (varTypes[variable.name] != null) {
            if (varTypes[variable.name] != variable.type) throw IllegalStateException()
        } else {
            varTypes[variable.name] = variable.type
        }
    }

    fun type(varName: String): Type? = varTypes[varName]

    private fun search(varName: String): String {
        return if (internal.contains(varName)) return varName else mkName(varName)
    }

    fun mkName(varName: String): String {
        return mkName(varName, procStack)
    }

    private fun mkName(varName: String, stack: List<String>): String {
        val path = stack.joinToString(SEP)
        return if (path.isEmpty()) varName else "$path$SEP$varName"
    }
}

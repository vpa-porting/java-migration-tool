package porting.lsl
import ru.vpa.porting.lsl.semanticIdentity

import ru.vpa.porting.lsl.LibFunction


import org.jetbrains.research.libsl.nodes.Library
import java.util.*

data class LibModel(
    val libName: String,
    val libFunctions: List<LibFunction>
) {

    companion object {
        fun mkModel(lib: Library): LibModel {
            return LibModel(
                lib.fileName,
                lib.automata.flatMap { auto ->
                    (auto.functions + auto.constructors).mapIndexed { i, func ->
                        LibFunction(auto, func, lib.semanticIdentity(),
                            if (auto.annotationUsages.any { it.annotationReference.name in setOf("Terminal", "JavaThrow") })
                                ru.vpa.porting.expr.ActionEffect.TERMINATE else ru.vpa.porting.expr.ActionEffect.CONTINUE).also { it.funcNumber = i + 1 }
                    }
                }
            )
        }

        fun funcToDot(func: LibFunction): String {
            val sb = StringBuilder("digraph \"ssa\"{\n")
            func.ssaRoot.toDot(sb, Collections.newSetFromMap(IdentityHashMap()))
            sb.append("}\n")
            return sb.toString()
        }
    }

    fun findFuncByName(autoName: String, funcName: String): LibFunction? {
        return libFunctions.find {
            it.automata.name == autoName && it.function.name == funcName
        }
    }

    fun functionToDot(autoName: String, funcName: String): String {
        val func = findFuncByName(autoName, funcName)!!
        return funcToDot(func)
    }

    fun libraryToDot(): String {
        val sb = StringBuilder("digraph \"$libName\" {\n")
        libFunctions.forEach { func ->
            sb.append("subgraph \"$libName\$${func.fullName}\"{\n")
            func.ssaRoot.toDot(sb, Collections.newSetFromMap(IdentityHashMap()))
            sb.append("}\n")
        }
        sb.append("}")
        return sb.toString()
    }
}

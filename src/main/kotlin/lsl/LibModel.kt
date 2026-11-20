package porting.lsl
import ru.vpa.porting.lsl.SpecificationParser

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
                SpecificationParser.prepare(lib).functions
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

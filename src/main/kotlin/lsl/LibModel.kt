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
                collectFunctions(lib)
            )
        }

        private fun collectFunctions(lib: Library): List<LibFunction> {
            val libraryId = lib.semanticIdentity()
            return lib.automata.flatMap { automaton ->
                val binding = AutomatonBinding.decode(automaton)
                (automaton.functions + automaton.constructors).mapIndexed { index, function ->
                    val prepared = LibFunction(
                        automata = automaton,
                        function = function,
                        libraryId = libraryId,
                        effect = binding.effect,
                    )
                    prepared.funcNumber = index + 1
                    prepared
                }
            }
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

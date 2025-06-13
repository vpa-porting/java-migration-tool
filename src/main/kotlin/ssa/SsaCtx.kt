package porting.ssa

import porting.SEP
import porting.copy

class SsaCtx(
    private val varVersions: MutableMap<String, Int> = mutableMapOf(),
    val varMap: VarMap = VarMap()
) {

    fun copy(): SsaCtx {
        return SsaCtx(varVersions.copy(), varMap.copy())
    }

    operator fun get(name: String): String {
        val v = varVersions[name] ?: throw IllegalArgumentException("Can't get $name: not found")
        return "$name$SEP$v"
    }

    fun inc(name: String): String {
        var v = varVersions[name] ?: throw IllegalArgumentException("Can't inc $name: not found")
        v++
        varVersions[name] = v
        return "$name$SEP$v"
    }

    fun incOrAdd(name: String): String {
        var v = varVersions[name] ?: -1
        v++
        varVersions[name] = v
        return "$name$SEP$v"
    }
}
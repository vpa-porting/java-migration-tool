package porting.lsl

import org.jetbrains.research.libsl.LibSL

object LSLParser {

    fun parse(lslDirPath: String, libPath: String): LibModel {
        val libSL = LibSL(lslDirPath)
        val fromLibrary = libSL.loadFromPath(libPath)

        return LibModel.mkModel(fromLibrary)
    }
}

package porting

import porting.lsl.LSLParser
import porting.tool.migrate
import java.nio.file.Path

const val LIBSL_PATH = "TestSpecs"
const val FILE_LIB1_PATH = "$LIBSL_PATH/file-lib1.lsl"
const val FILE_LIB2_PATH = "$LIBSL_PATH/file-lib2.lsl"
const val MATH_LIB1_PATH = "$LIBSL_PATH/math-lib1.lsl"
const val MATH_LIB2_PATH = "$LIBSL_PATH/math-lib2.lsl"

const val PROJECTS_PATH = "TestProjects"
const val FILE_PROJECT = "$PROJECTS_PATH/FileProject"
const val MATH_PROJECT = "$PROJECTS_PATH/MathProject"

const val OUTPUT_PATH = "TestMigrated"
const val FILE_PROJECT_MIGRATED = "$OUTPUT_PATH/FileProject_migrated"
const val MATH_PROJECT_MIGRATED = "$OUTPUT_PATH/MathProject_migrated"

fun main() {
//    testMigration(
//        FILE_PROJECT,
//        FILE_PROJECT_MIGRATED,
//        FILE_LIB1_PATH,
//        FILE_LIB2_PATH
//    )
    testMigration(
        MATH_PROJECT,
        MATH_PROJECT_MIGRATED,
        MATH_LIB1_PATH,
        MATH_LIB2_PATH
    )
}

private fun testMigration(
    sourceProjectPath: String,
    outputProjectPath: String,
    sourceLibPath: String,
    targetLibPath: String,
) {
    val sourceLib = LSLParser.parse(LIBSL_PATH, sourceLibPath)
    val targetLib = LSLParser.parse(LIBSL_PATH, targetLibPath)
    migrate(
        Path.of(sourceProjectPath),
        Path.of(outputProjectPath),
        sourceLib, targetLib
    )
}
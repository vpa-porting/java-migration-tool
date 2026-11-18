package porting

import porting.lsl.LSLParser
import porting.tool.migrate
import java.nio.file.Path

const val LIBSL_PATH = "TestSpecs"
const val PROJECTS_PATH = "TestProjects"
const val OUTPUT_PATH = "TestMigrated"

data class MigrationCase(
    val name: String,
    val sourceProject: String,
    val sourceLib: String,
    val targetLib: String,
)

val CASES = listOf(
    MigrationCase(
        name = "math",
        sourceProject = "MathProject",
        sourceLib = "math-lib1.lsl",
        targetLib = "math-lib2.lsl",
    ),
    MigrationCase(
        name = "file",
        sourceProject = "FileProject",
        sourceLib = "file-lib1.lsl",
        targetLib = "file-lib2.lsl",
    ),
)

fun main(args: Array<String>) {
    val requested = args.toList()
    val cases = if (requested.isEmpty()) CASES else CASES.filter { it.name in requested }

    if (cases.isEmpty()) {
        println("No matching migration case for arguments $requested. Available: ${CASES.map { it.name }}; json-simple-full <project> <output>")
        return
    }

    for (case in cases) {
        println("=== Running migration case '${case.name}' ===")
        runMigrationCase(case)
    }
}

private fun runMigrationCase(case: MigrationCase) {
    if (case.name.startsWith("json-simple")) {
        println("Experimental approximate SMT case; not a complete json-simple migration. The legacy json-simple-full mode relocates source code and does not migrate to another library.")
    }
    val sourceLib = LSLParser.parse(LIBSL_PATH, "$LIBSL_PATH/${case.sourceLib}")
    val targetLib = LSLParser.parse(LIBSL_PATH, "$LIBSL_PATH/${case.targetLib}")
    migrate(
        Path.of("$PROJECTS_PATH/${case.sourceProject}"),
        Path.of("$OUTPUT_PATH/${case.sourceProject}_migrated"),
        sourceLib, targetLib
    )
}

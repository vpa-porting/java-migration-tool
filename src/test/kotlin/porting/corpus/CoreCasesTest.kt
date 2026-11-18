package porting.corpus

import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import porting.lsl.LSLParser
import porting.tool.MigrationStats
import porting.tool.migrate
import java.nio.file.Path
import kotlin.test.assertEquals

/** JUnit version of the two original smoke cases also runnable via the `migrateMath`/`migrateFile`
 * Gradle tasks (`Main.kt`'s `CASES`) - same pipeline, but with real assertions. */
class CoreCasesTest {

    private fun runCase(project: String, sourceLib: String, targetLib: String, outputDir: Path): MigrationStats {
        val from = LSLParser.parse("TestSpecs", "TestSpecs/$sourceLib")
        val to = LSLParser.parse("TestSpecs", "TestSpecs/$targetLib")
        return migrate(Path.of("TestProjects/$project"), outputDir, from, to)
    }

    @Test
    fun `math case migrates 1 of 1 calls`(@TempDir tempDir: Path) {
        val stats = runCase("MathProject", "math-lib1.lsl", "math-lib2.lsl", tempDir)
        assertEquals(1, stats.migrated)
        assertEquals(0, stats.skipped)
    }

    @Test
    fun `file case migrates 2 of 2 calls`(@TempDir tempDir: Path) {
        val stats = runCase("FileProject", "file-lib1.lsl", "file-lib2.lsl", tempDir)
        assertEquals(2, stats.migrated)
        assertEquals(0, stats.skipped)
    }
}

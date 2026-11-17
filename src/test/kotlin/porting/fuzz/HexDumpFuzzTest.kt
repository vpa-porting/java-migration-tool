package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import net.lbruun.hexutils.Hex
import org.junit.jupiter.api.BeforeAll

class HexDumpFuzzTest {
    private val runner = object : HexDumpSpecFuzzTest() {
        override val candidate get() = FuzzSubjects.dump.target
        override val kind = "migrated"
    }
    @FuzzTest
    fun values(data: FuzzedDataProvider) = runner.values(data)
    @FuzzTest
    fun print(data: FuzzedDataProvider) = runner.print(data)
    companion object {
        @BeforeAll @JvmStatic fun prepareEnumMetadata() { Hex.HexCase::class.java.declaredMethods }
    }
}

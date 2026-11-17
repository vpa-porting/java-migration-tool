package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest

class HexHarmlessEffectsFuzzTest {
    private val runner = object : HexHarmlessSpecFuzzTest() {
        override val candidate get() = FuzzSubjects.harmlessEffects.target
        override val kind = "migrated"
    }
    @FuzzTest
    fun mutate(data: FuzzedDataProvider) = runner.mutate(data)
    @FuzzTest
    fun decode(data: FuzzedDataProvider) = runner.decode(data)
}

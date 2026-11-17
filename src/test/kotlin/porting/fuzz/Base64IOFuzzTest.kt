package porting.fuzz

import com.code_intelligence.jazzer.api.FuzzedDataProvider
import com.code_intelligence.jazzer.junit.FuzzTest
import porting.spec.Base64IOChecks
import porting.spec.Base64IOChecks.Case

/** Same stream/failure inputs as the model checks, but candidate comes from LibSL migration. */
class Base64IOFuzzTest {
    private val runner = object : Base64IOSpecFuzzTest() {
        override val verificationKind = "migrated"
        override val checkConstructor = false // No claim that the public source constructor was migrated.
        override fun runCandidate(test: Case) = Base64IOChecks.runGenerated(FuzzSubjects.base64IO.target, test)
    }
    @FuzzTest
    fun encode(data: FuzzedDataProvider) = runner.encode(data)
    @FuzzTest
    fun failures(data: FuzzedDataProvider) = runner.failures(data)
}

package porting.corpus

import org.junit.jupiter.api.Test
import kotlin.test.assertFalse
import kotlin.test.assertTrue

class CorpusHarnessOutcomeTest {
    @Test
    fun `exact comparison distinguishes exception classes`() {
        val illegalArgument = CorpusHarness.Thrown(IllegalArgumentException::class.java)
        val numberFormat = CorpusHarness.Thrown(NumberFormatException::class.java)
        assertTrue(CorpusHarness.outcomesMatchExactly(illegalArgument, illegalArgument))
        assertFalse(CorpusHarness.outcomesMatchExactly(illegalArgument, numberFormat))
        assertFalse(CorpusHarness.outcomesMatchExactly(numberFormat, illegalArgument))
        assertFalse(CorpusHarness.outcomesMatchExactly(illegalArgument, CorpusHarness.Value(null)))
    }
}

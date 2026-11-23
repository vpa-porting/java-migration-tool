package porting.corpus

import org.junit.jupiter.api.Test
import ru.vpa.porting.expr.*
import ru.vpa.porting.smt.SMTContext
import kotlin.test.assertEquals

class CharSemanticsTest {
    @Test fun `UTF-16 comparison and arithmetic use unsigned promotion`() {
        SMTContext().use { ctx ->
            for (code in listOf(0, 127, 255, 256, 32767, 32768, 65535)) {
                val char = LChar(code.toChar())
                assertEquals<Any>(ctx.mkBool(code > 255), LBinOp(char, ">", LInt(255)).toSMT(ctx).smt())
                assertEquals<Any>(ctx.mkBool(code >= 32768), LBinOp(char, ">=", LChar('\u8000')).toSMT(ctx).smt())
                assertEquals<Any>(ctx.mkBv(code - 1), LBinOp(char, "+", LInt(-1)).toSMT(ctx).smt())
                // A char literal must have exactly the sort used by action char parameters.
                assertEquals(char.type().sort(ctx), char.toSMT(ctx).sort())
                LActionCall("CHAR_IDENTITY", char.type(), listOf(char.type()), listOf(char)).toSMT(ctx)
            }
        }
    }
}

package porting.parity

import kotlin.test.*
import porting.expr.*
import porting.smt.SMTContext

class AcceptedSemanticsTest {
    @Test fun `UTF16 characters have consistent sorts and unsigned promotion`() {
        SMTContext().use { ctx ->
            for (code in listOf(0, 255, 256, 32767, 32768, 65535)) {
                val char = LChar(code.toChar())
                assertEquals(char.type().sort(ctx), char.toSMT(ctx).sort())
                assertEquals<Any>(ctx.mkBool(code > 255), LBinOp(char, ">", LInt(255)).toSMT(ctx).smt())
                assertEquals<Any>(ctx.mkBv(code - 1), LBinOp(char, "+", LInt(-1)).toSMT(ctx).smt())
            }
        }
    }
    @Test fun `boolean operations reject ordering and mixed operands`() {
        SMTContext().use { ctx ->
            for (op in listOf("==", "!=", "&&", "||")) {
                val expr = LBinOp(LBool(true), op, LBool(false))
                assertEquals(ctx.boolSort, expr.type().sort(ctx))
                assertEquals(ctx.boolSort, expr.toSMT(ctx).sort())
            }
            for (op in listOf("<", "<=", ">", ">=")) {
                assertFailsWith<IllegalArgumentException> { LBinOp(LBool(true), op, LBool(false)).type() }
            }
            assertFailsWith<IllegalArgumentException> { LBinOp(LBool(true), "==", LInt(1)).type() }
            assertFailsWith<IllegalArgumentException> { LBinOp(LInt(1), "==", LBool(true)).type() }
        }
    }
}

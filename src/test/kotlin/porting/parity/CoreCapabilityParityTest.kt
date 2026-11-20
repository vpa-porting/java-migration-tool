package porting.parity

import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNotNull
import kotlin.test.assertTrue
import porting.gen.ConditionNode
import porting.gen.TraceCallsNode
import porting.gen.Generator
import io.ksmt.solver.KSolverStatus
import io.ksmt.solver.z3.KZ3Solver
import org.jetbrains.research.libsl.nodes.Constructor
import porting.expr.LBinOp
import porting.expr.LInt
import porting.expr.LUnOp
import porting.lsl.LSLParser
import porting.lsl.LibModel
import porting.smt.SMTContext
import porting.solver.param.ParamCodingCtx
import porting.solver.trace.TraceSolution
import porting.solver.trace.TraceSolver
import java.nio.file.Files
import kotlin.time.Duration.Companion.seconds

class CoreCapabilityParityTest {
    private fun library(body: String): LibModel {
        val root = Files.createTempDirectory("core-parity-")
        val file = root.resolve("test.lsl")
        try {
            Files.writeString(file, """
                libsl "1.0.0";
                library `Parity` version "1.0.0";
                typealias int = int32;
                typealias bool = bool;
                $body
            """.trimIndent())
            return LSLParser.parse(root.toString(), file.toString())
        } finally {
            Files.deleteIfExists(file)
            Files.deleteIfExists(root)
        }
    }

    @Test
    fun `constructors participate in the model with an object result`() {
        val lib = library("""
            type Box { }
            define action BUILD(value: int): Box;
            automaton Box: Box {
                constructor Box(value: int) { result = action BUILD(value); }
            }
        """)
        val constructor = lib.libFunctions.single()
        assertTrue(constructor.function is Constructor)
        assertEquals("Box", constructor.traces.single().result!!.name.type()!!.name)
        assertEquals("BUILD", constructor.traces.single().actions.single().value.actionName)
    }

    @Test
    fun `empty action traces need no target calls`() {
        val source = library("""
            type Source { }
            automaton Source: Source { fun value(): int { result = 7; } }
        """).libFunctions.single()
        val solutions = assertNotNull(TraceSolver.solve(source, emptyList()))
        assertTrue(solutions.values.single().single().solution.isEmpty())
        val ctx = ParamCodingCtx(solutions.values.single().single())
        try {
            ctx.mkParamFormula()
            assertEquals(LInt(7), assertNotNull(ctx.collectParamSolution()).result)
        } finally { ctx.ctx.close() }
    }

    @Test
    fun `unavailable actions are rejected without constructing search candidates`() {
        val source = library("""
            type Source { }
            define action MISSING(): int;
            automaton Source: Source { fun value(): int { result = action MISSING(); } }
        """).libFunctions.single()
        assertEquals(null, TraceSolver.solve(source, emptyList()))
    }

    @Test
    fun `qualified enum constants are lowered from their declared values`() {
        val function = library("""
            enum sample.Mode { FIRST = 3; SECOND = 7; }
            type Source { }
            automaton Source: Source {
                fun choose(mode: sample.Mode): bool { result = mode == sample.Mode.SECOND; }
            }
        """).libFunctions.single()
        val comparison = function.traces.single().result!!.value as LBinOp
        assertEquals(LInt(7), comparison.right)
    }

    @Test
    fun `parameters used only in target conditions are inferred rather than defaulted`() {
        val lib = library("""
            type Source { }
            type Target { }
            define action VALUE(): int;
            define action OTHER(): int;
            automaton Source: Source {
                fun choose(flag: bool): int {
                    if (flag) { result = action VALUE(); }
                    else { result = action OTHER(); }
                }
            }
            automaton Target: Target {
                fun choose(flag: bool): int {
                    if (!flag) { result = action VALUE(); }
                    else { result = action OTHER(); }
                }
            }
        """)
        val source = lib.libFunctions.first { it.automata.name == "Source" }.traces.first {
            it.actions.single().value.actionName == "VALUE"
        }
        val target = lib.libFunctions.first { it.automata.name == "Target" }.traces.first {
            it.actions.single().value.actionName == "VALUE"
        }
        val ctx = ParamCodingCtx(TraceSolution(source, listOf(target)))
        try {
            ctx.mkParamFormula()
            val solution = assertNotNull(ctx.collectParamSolution())
            assertEquals(LUnOp("!", source.args.single().name), solution.argsMap[target.args.single().name])
            assertTrue(target.args.single().name !in solution.unused)
        } finally { ctx.ctx.close() }
    }


    @Test
    fun `terminal actions drop dead code in SSA`() {
        val function = library("""
            type Source { }
            define action THROW_FAILURE(): void;
            define action AFTER_THROW(): int;
            automaton Source: Source {
                fun stop(): int {
                    action THROW_FAILURE();
                    result = action AFTER_THROW();
                }
            }
        """).libFunctions.single()
        assertEquals(listOf("THROW_FAILURE"), function.traces.single().actions.map { it.value.actionName })
        assertEquals(null, function.traces.single().result)
    }

    @Test
    fun `branches returning literals survive without target calls`() {
        val source = library("""
            type Source { }
            automaton Source: Source { fun value(): int { result = 7; } }
        """).libFunctions.single()
        val root = ConditionNode(
            porting.expr.LBool(true),
            TraceCallsNode(emptyList(), emptyMap(), LInt(7), null),
            TraceCallsNode(emptyList(), emptyMap(), LInt(9), null),
        )
        val java = Generator().generate(source, root)
        assertTrue(java.contains("return 7"), java)
        assertTrue(java.contains("return 9"), java)

    }

    @Test
    fun `native Z3 is actually available`() {
        SMTContext().use { ctx ->
            KZ3Solver(ctx).use { solver ->
                solver.assert(ctx.mkTrue())
                assertEquals(KSolverStatus.SAT, solver.check(5.seconds))
            }
        }
    }
}

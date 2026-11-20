package porting.parity

import kotlin.test.*
import java.nio.file.Files
import porting.lsl.LSLParser
import porting.gen.Generator
import ru.vpa.porting.plan.TerminateNode
import ru.vpa.porting.expr.LString

class TerminalBindingTest {
    @Test fun `generator rejects empty exception type`() {
        val root = Files.createTempDirectory("invalid-binding-")
        val file = root.resolve("invalid.lsl")
        try {
            Files.writeString(file, """
                libsl "1.0.0";
                library `InvalidBinding` version "1";
                annotation JavaThrow(exception: string);
                annotation Terminal();
                @Terminal
                define action FAIL(): void;
                type Target { }
                @JavaThrow(exception = "")
                automaton Target: Target { fun fail(): void { action FAIL(); } }
            """.trimIndent())
            assertFailsWith<IllegalArgumentException> {
                val function = LSLParser.parse(root.toString(), file.toString()).libFunctions.single()
                val node = TerminateNode(function.traces.single(), emptyMap())
                Generator().generate(function, node)
            }
        } finally { Files.deleteIfExists(file); Files.deleteIfExists(root) }
    }

    @Test fun `terminal effect emits a backend exception with its arguments`() {
        val root = Files.createTempDirectory("terminal-binding-")
        val file = root.resolve("terminal.lsl")
        try {
            Files.writeString(file, """
                libsl "1.0.0";
                library `TerminalBinding` version "1";
                typealias string = string;
                annotation JavaThrow(exception: string);
                type Target { }
                annotation Terminal();
                @Terminal
                define action FAILURE(message: string): void;
                @JavaThrow(exception = "java.lang.IllegalArgumentException")
                automaton Target: Target {
                    fun fail(message: string): void { action FAILURE(message); }
                }
            """.trimIndent())
            val function = LSLParser.parse(root.toString(), file.toString()).libFunctions.single()
            assertTrue(function.traces.single().actions.any { it.value.effect == ru.vpa.porting.expr.ActionEffect.TERMINATE })
            val trace = function.traces.single()
            val node = TerminateNode(trace, mapOf(trace.args.single().name to LString("failure")))
            val generated = Generator().generate(function, node)
            assertTrue(generated.contains("throw new java.lang.IllegalArgumentException(\"failure\")"), generated)
        } finally { Files.deleteIfExists(file); Files.deleteIfExists(root) }
    }
}

package porting.parity

import kotlin.test.*
import ru.vpa.porting.pre.CallableKey

class CallableKeyTest {
    @Test fun `owners signatures kinds and delimiter-containing names do not alias`() {
        val base = CallableKey("lib", "A", "function", "f", listOf("int", "string"), "int")
        val keys = listOf(base, base.copy(library = "other"), base.copy(automaton = "B"),
            base.copy(kind = "constructor"), base.copy(arguments = listOf("int#string")),
            base.copy(arguments = listOf("string", "int")), base.copy(result = "bool"),
            base.copy(name = "f${'$'}args:int"))
        assertEquals(keys.size, keys.map { it.smtName() }.toSet().size)
        assertEquals(base.smtName(), base.copy().smtName())
        assertTrue(keys.all { '$' !in it.smtName() })
    }
}

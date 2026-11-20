package porting.lsl

import org.jetbrains.research.libsl.nodes.Automaton
import org.jetbrains.research.libsl.nodes.StringLiteral
import ru.vpa.porting.expr.ActionEffect

/** Backend binding decoded at the LibSL boundary, before preparing solver functions. */
internal sealed interface AutomatonBinding {
    val effect: ActionEffect

    data object Callable : AutomatonBinding { override val effect = ActionEffect.CONTINUE }
    data object Terminal : AutomatonBinding { override val effect = ActionEffect.TERMINATE }
    data class Throw(val exceptionType: String) : AutomatonBinding {
        override val effect = ActionEffect.TERMINATE
    }

    companion object {
        private const val TERMINAL = "Terminal"
        private const val THROW = "JavaThrow"
        private const val EXCEPTION = "exception"

        fun decode(automaton: Automaton): AutomatonBinding {
            val throws = automaton.annotationUsages.filter { it.annotationReference.name == THROW }
            require(throws.size <= 1) { "Duplicate @$THROW binding on ${automaton.name}" }
            val usage = throws.singleOrNull()
            if (usage != null) {
                val value = usage.arguments.singleOrNull { it.name == EXCEPTION }?.value as? StringLiteral
                    ?: error("@$THROW on ${automaton.name} requires a string '$EXCEPTION' argument")
                require(value.value.isNotBlank()) { "@$THROW exception type must not be blank" }
                return Throw(value.value)
            }
            return if (automaton.annotationUsages.any { it.annotationReference.name == TERMINAL })
                Terminal else Callable
        }
    }
}

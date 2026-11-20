package porting.pre

import java.util.Base64

/** Components remain structured until serialization; user names cannot inject scope delimiters. */
data class CallableKey(
    val library: String,
    val automaton: String,
    val kind: String,
    val name: String,
    val arguments: List<String>,
    val result: String,
) {
    fun smtName(): String = (listOf(library, automaton, kind, name, arguments.size.toString()) + arguments + result)
        .joinToString(".") { Base64.getUrlEncoder().withoutPadding().encodeToString(it.toByteArray(Charsets.UTF_8)) }
}

package porting.gen
import porting.lsl.AutomatonBinding
import ru.vpa.porting.plan.*

import porting.gen.toJavaStr


import org.jetbrains.research.libsl.nodes.Automaton
import org.jetbrains.research.libsl.nodes.StringLiteral
import com.github.javaparser.ast.expr.StringLiteralExpr
import ru.vpa.porting.expr.LExpr
import ru.vpa.porting.expr.LVar
import ru.vpa.porting.expr.not
import ru.vpa.porting.lsl.LibFunction
import ru.vpa.porting.ssa.Trace

/** Name of the LSL `annotation JavaAccessor(expr: string);` used to mark an automaton whose
 * instances are obtained through a real Java static accessor expression (e.g. a stateless
 * singleton factory like `java.util.Base64.getEncoder()`) rather than being callable as a flat
 * `AutomatonName.method(args)` static call. Declaring it once per automaton lets any function on
 * that automaton be realized as `<accessor>.method(args)` purely from the specification, with no
 * hand-written adapter/facade class standing in for the call.
 *
 * `expr` may reference the target function's own declared parameters as `$paramName` (e.g.
 * `java.util.HexFormat.ofDelimiter($delim)`), for factories that aren't zero-arg - the referenced
 * parameter is consumed by the accessor and dropped from the emitted method call's own argument
 * list, so it isn't passed twice.
 */
private const val JAVA_ACCESSOR_ANNOTATION = "JavaAccessor"
private const val JAVA_ACCESSOR_ARG = "expr"
private val ACCESSOR_PARAM_REF = Regex("\\$([A-Za-z_][A-Za-z0-9_]*)")

/** Name of the LSL `annotation JavaConstructor(type: string);` used to mark an automaton whose
 * instances are obtained by constructing a real Java value type (e.g. `new java.lang.String(...)`)
 * rather than being callable as a flat `AutomatonName.method(args)` static call.
 */
private const val JAVA_CONSTRUCTOR_ANNOTATION = "JavaConstructor"
private const val JAVA_CONSTRUCTOR_ARG = "javaType"

/** Name of the LSL `annotation JavaThrow(exception: string);` used to mark an automaton whose
 * functions stand for an exceptional outcome rather than a call: realizing one emits
 * `throw new <exception>();` and ends the path (nothing after it is generated). This lets a
 * source specification state exactly when the original raises which JDK exception - e.g. an
 * out-of-range slice - and have the migrated code raise the same class, without a facade class.
 */

/** Reused by convention (see `tool/Migrator.kt`'s source-side receiver check) to mark a target
 * function's first declared parameter as the real instance the call is made on, e.g. a fun
 * `toCharArray(receiver: string): array<char>` realizes `receiver.toCharArray()` rather than
 * `AutomatonName.toCharArray(receiver)`. This lets a target action chain onto the *result of a
 * previous trace call* (an ordinary SSA value, not a fresh instance from a fixed accessor), which
 * `@JavaAccessor`/`@JavaConstructor` cannot express since both are call-site-independent.
 */
private const val RECEIVER_ARG_NAME = "receiver"

private fun stringAnnotationArg(automaton: Automaton, annotationName: String, argName: String): String? {
    val usage = automaton.annotationUsages.find { it.annotationReference.name == annotationName } ?: return null
    val arg = usage.arguments.find { it.name == argName }
        ?: throw IllegalStateException("@$annotationName on automaton ${automaton.name} is missing the '$argName' argument")
    val literal = arg.value as? StringLiteral
        ?: throw IllegalStateException("@$annotationName.$argName on automaton ${automaton.name} must be a string literal")
    // LibSL keeps escape sequences in StringLiteral.value. A Java binding is
    // the decoded string, so multiline/quoted expressions must be unescaped once.
    return StringLiteralExpr(literal.value).asString()
}

/** The real Java expression that yields an instance of [automaton], if it was declared with
 * `@JavaAccessor(expr = "...")`. The accessor must be a side-effect-free, idempotent expression
 * (e.g. a call to a stateless singleton factory) since it is inlined at every call site that
 * needs an instance of this automaton - never cached in a variable.
 */
private fun javaAccessorOf(automaton: Automaton): String? =
    stringAnnotationArg(automaton, JAVA_ACCESSOR_ANNOTATION, JAVA_ACCESSOR_ARG)

/** The real Java type to construct for [automaton], if it was declared with
 * `@JavaConstructor(javaType = "...")`. Every function on such an automaton is realized as
 * `new <type>(args)` instead of a flat static call.
 */
private fun javaConstructorTypeOf(automaton: Automaton): String? =
    stringAnnotationArg(automaton, JAVA_CONSTRUCTOR_ANNOTATION, JAVA_CONSTRUCTOR_ARG)

/** True when [automaton]'s name is a synthetic spec-only label (`@JavaAccessor`/`@JavaConstructor`)
 * rather than a real importable Java class - callers should not emit `import static <name>.*;` for
 * it, since every call to its functions is already fully-qualified with the real accessor/type by
 * [Generator], and the synthetic name may not even resolve to a real Java symbol.
 */
fun hasSyntheticJavaBinding(automaton: Automaton): Boolean =
    javaAccessorOf(automaton) != null || javaConstructorTypeOf(automaton) != null || javaThrowTypeOf(automaton) != null

/** The exception class to throw for [automaton], if it was declared with `@JavaThrow(exception = "...")`. */
private fun javaThrowTypeOf(automaton: Automaton): String? =
    (AutomatonBinding.decode(automaton) as? AutomatonBinding.Throw)
        ?.exceptionType?.let { StringLiteralExpr(it).asString() }

private val NARROW_TYPES = setOf("byte", "short", "char")

class Generator {

    private var depth = 1
    private val tabIndent = "  "
    private val sb = StringBuilder()

    private val resultMap = mutableMapOf<LVar, String>()

    fun generate(source: LibFunction, rootNode: GenNode): String {
        generateHeader(source)
        generateGenNode(rootNode)
        writeln("}")
        return sb.toString()
    }

    private var currentReturnType = "void"

    /**
     * Java promotes arithmetic on byte / short / char to int, so a result of one of those types has to be
     * narrowed explicitly (`(byte) (high * 16 + low)`); the spec's own fixed-width arithmetic wraps the same way.
     */
    private fun narrowed(expression: String): String =
        if (currentReturnType in NARROW_TYPES && expression != "null") "($currentReturnType) $expression" else expression

    private fun generateHeader(source: LibFunction) {
        val accessModifier = "public static"
        val returnType = source.function.returnType.toJavaType()
        currentReturnType = returnType
        val functionName = "generated_${source.function.name}"
        val args = source.args.joinToString(", ") {
            val type = it.name.type.toJavaType()
            val name = it.name.toJavaStr(resultMap)
            "$type $name"
        }
        writeln("$accessModifier $returnType $functionName($args) throws Exception {")
    }

    private fun generateGenNode(node: GenNode?) {
        when (node) {
            is TraceCallsNode -> generateTraceCalls(node)
            is ConditionNode -> generateCondition(node)
            is ReturnNode -> writeln("return ${narrowed(node.value.toJavaStr(resultMap))};")
            is TerminateNode -> check(generateTraceCall(node.call, node.args)) {
                "Terminal action has no Java throw binding"
            }
            null -> {}
        }
    }

    private fun generateTraceCalls(node: TraceCallsNode) {
        depth++
        var terminated = false
        for (call in node.traceCalls) {
            if (generateTraceCall(call, node.args)) {
                terminated = true
                break
            }
        }
        if (!terminated) {
            val nodeResult = node.result
        if (nodeResult != null) {
                writeln("return ${narrowed(nodeResult.toJavaStr(resultMap))};")
            } else generateGenNode(node.next)
        }
        depth--
    }

    /** Emits one target call; returns true if it was a `throw`, which ends the path. */
    private fun generateTraceCall(trace: Trace, argsMap: Map<LVar, LExpr>): Boolean {
        val exceptionType = javaThrowTypeOf(trace.function.automata)
        if (exceptionType != null) {
            val arguments = trace.args.joinToString(", ") { arg ->
                (argsMap[arg.name] ?: error("Unmapped exception argument ${arg.name}")).toJavaStr(resultMap)
            }
            writeln("throw new $exceptionType($arguments);")
            return true
        }
        val result = if (trace.result != null) {
            val type = trace.result!!.name.type().toJavaType()
            "$type ${mkResult(trace.result!!.name)} = "
        } else ""
        val declaredArgs = trace.function.function.args
        val isReceiverCall = declaredArgs.firstOrNull()?.name == RECEIVER_ARG_NAME
        if (isReceiverCall) {
            // The first declared parameter stands for a real instance obtained from an earlier
            // trace call's result (or any other in-scope SSA value) - not a fresh accessor call -
            // so it becomes the receiver expression and is dropped from the argument list.
            val receiverArg = trace.args.first()
            val receiverExpr = argsMap[receiverArg.name]!!.toJavaStr(resultMap)
            val args = trace.args.drop(1).joinToString(", ") { argsMap[it.name]!!.toJavaStr(resultMap) }
            writeln("$result$receiverExpr.${trace.function.function.name}($args);")
            return false
        }
        val constructorType = javaConstructorTypeOf(trace.function.automata)
        if (constructorType != null) {
            val args = trace.args.joinToString(", ") { argsMap[it.name]!!.toJavaStr(resultMap) }
            writeln("${result}new $constructorType($args);")
            return false
        }
        // Fully-qualify the call instead of relying on the `import static X.*` wildcard: a bare
        // call to a name like `toString`/`hashCode`/`equals` never compiles even with the right
        // wildcard import present, because Java resolves those names to the inherited
        // java.lang.Object method first regardless of arity (verified: this broke the generated
        // arrayutils-arrays output for real, not just hypothetically).
        // An automaton tagged @JavaAccessor is not itself a callable class - its instance comes
        // from a real static accessor expression (e.g. a stateless singleton factory), so calls
        // to its functions chain onto that expression instead of the bare automaton name.
        val accessorTemplate = javaAccessorOf(trace.function.automata)
        if (accessorTemplate != null) {
            val consumedParams = mutableSetOf<String>()
            val receiver = ACCESSOR_PARAM_REF.replace(accessorTemplate) { m ->
                val paramName = m.groupValues[1]
                val declIndex = declaredArgs.indexOfFirst { it.name == paramName }
                require(declIndex >= 0) {
                    "@$JAVA_ACCESSOR_ANNOTATION on automaton ${trace.function.automata.name} references " +
                        "unknown parameter \$$paramName in \"$accessorTemplate\""
                }
                consumedParams += paramName
                argsMap[trace.args[declIndex].name]!!.toJavaStr(resultMap)
            }
            val args = trace.args.filterIndexed { i, _ -> declaredArgs[i].name !in consumedParams }
                .joinToString(", ") { argsMap[it.name]!!.toJavaStr(resultMap) }
            writeln("$result$receiver.${trace.function.function.name}($args);")
            return false
        }
        val args = trace.args.joinToString(", ") { argsMap[it.name]!!.toJavaStr(resultMap) }
        writeln("$result${trace.function.automata.name}.${trace.function.function.name}($args);")
        return false
    }

    private fun generateCondition(node: ConditionNode) {
        if (isTrivial(node.thenNode)) {
            val cond = node.cond.not().toJavaStr(resultMap)
            writeln("if($cond) {")
            generateGenNode(node.elseNode)
            writeln("}")
        } else {
            val cond = node.cond.toJavaStr(resultMap)
            writeln("if($cond) {")
            generateGenNode(node.thenNode)
            writeln("} else {")
            generateGenNode(node.elseNode)
            writeln("}")
        }
    }

    // A branch is only safe to drop (collapsing `if(cond){}else{X}` into `if(!cond){X}`) when it
    // truly emits nothing. A TraceCallsNode with no target calls can still carry a literal `result`
    // (e.g. `return null;`) that must not be discarded just because it makes no further calls.
    private fun isTrivial(node: GenNode?): Boolean = when (node) {
        null -> true
        is TraceCallsNode -> node.traceCalls.isEmpty() && node.result == null && node.next == null
        is ConditionNode, is ReturnNode, is TerminateNode -> false
    }

    private fun writeln(text: String) {
        sb.append(tabIndent.repeat(depth))
        sb.append(text)
        sb.append("\n")
    }

    private fun mkResult(result: LVar): String {
        if (!resultMap.containsKey(result)) {
            val ind = resultMap.size
            resultMap[result] = "${result.toJavaStr(resultMap)}$ind"
        }
        return resultMap[result]!!
    }
}

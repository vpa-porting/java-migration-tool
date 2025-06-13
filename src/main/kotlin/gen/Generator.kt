package porting.gen

import porting.expr.LExpr
import porting.expr.LVar
import porting.expr.not
import porting.lsl.LibFunction
import porting.ssa.Trace

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

    private fun generateHeader(source: LibFunction) {
        val accessModifier = "public static"
        val returnType = source.function.returnType.toJavaType()
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
            null -> {}
        }
    }

    private fun generateTraceCalls(node: TraceCallsNode) {
        depth++
        node.traceCalls.forEach { generateTraceCall(it, node.args) }
        if (node.result != null) {
            writeln("return ${node.result.toJavaStr(resultMap)};")
        } else generateGenNode(node.next)
        depth--
    }

    private fun generateTraceCall(trace: Trace, argsMap: Map<LVar, LExpr>) {
        val result = if (trace.result != null) {
            val type = trace.result!!.name.type().toJavaType()
            "$type ${mkResult(trace.result!!.name)} = "
        } else ""
        val functionName = trace.function.function.name
        val args = trace.args.joinToString(", ") {
            argsMap[it.name]!!.toJavaStr(resultMap)
        }
        writeln("$result$functionName($args);")
    }

    private fun generateCondition(node: ConditionNode) {
        if (node.thenNode == null || (node.thenNode is TraceCallsNode && node.thenNode.traceCalls.isEmpty())) {
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

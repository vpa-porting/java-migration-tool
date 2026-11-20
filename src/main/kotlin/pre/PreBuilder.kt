package porting.pre

import org.jetbrains.research.libsl.nodes.*
import org.jetbrains.research.libsl.nodes.Function
import org.jetbrains.research.libsl.nodes.references.TypeReference
import org.jetbrains.research.libsl.type.EnumType
import org.jetbrains.research.libsl.type.Type
import org.jetbrains.research.libsl.type.TypeAlias
import porting.RESULT
import porting.expr.*

class PreBuilder {

    private var actResCnt = 0
    private fun mkActionResVarName(ctx: PreCtx) = ctx.mkName("ACT_RES#${++actResCnt}")

    fun processFunction(func: Function, automaton: Automaton): PFunc {
        val effectiveReturnType = when (func) {
            is Constructor -> automaton.typeReference.type()
            else -> func.returnType.type()
        }
        val internalVars = mutableSetOf<String>()
        val ctx = PreCtx(internal = internalVars)
        // All candidate traces share an SMT context. Bare method names alias variables
        // across classes and overloads (e.g. toJSONString(List) and toJSONString(JSONStyle)).
        // Scope both arguments and temporaries by the complete specification signature.
        val signature = func.args.joinToString(",") { it.typeReference.toString() }
        ctx.procStack.addLast("${automaton.name}.${func.name}($signature)")

        val internalBlock = mutableListOf<PStat>()
        automaton.internalVariables.forEach { v ->
            internalVars.add(v.name)

            val value = v.initialValue?.let { buildExpr(ctx, automaton, internalBlock, it) }
            val variable = v.variable(ctx)
            internalBlock.add(mkDecl(ctx, variable, value))
        }

        val argsBlock = mutableListOf<PDecl>()
        func.args.forEach { a ->
            val variable = a.variable(ctx)
            argsBlock.add(mkArg(ctx, variable))
        }

        val resultVar = LVar(ctx[RESULT], effectiveReturnType)
        val result = mkResultDecl(ctx, resultVar)

        val block = mutableListOf<PStat>()
        processBlock(ctx, automaton, block, func.statements)
        return PFunc(internalBlock, argsBlock, result, block)
    }

    private fun match(params: List<FunctionArgument>, args: List<LExpr>): Boolean {
        if (params.size != args.size) return false
        else for (i in params.indices) {
            val paramType = params[i].typeReference.resolve()
            val argType = args[i].type()
            if (paramType != null && argType != null && paramType::class.java != argType::class.java) return false
        }
        return true
    }

    private fun processProcedureCall(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        call: ProcedureCall
    ): LExpr {
        val name = call.name
        val args = call.arguments.map { buildExpr(ctx, automaton, block, it) }
        val proc = automaton.procDeclarations.find { it.name == name && match(it.args, args) }
            ?: throw Exception("Can't find procedure call $name(${args.joinToString(", ") { it.type()?.name ?: "?" }})")

        ctx.procStack.addLast(name)

        val resultVar = LVar(ctx[RESULT], proc.returnType.type())
        block.add(mkResultDecl(ctx, resultVar))

        for (i in proc.args.indices) {
            val param = proc.args[i]
            val arg = args[i]
            block.add(mkAssign(ctx, param.variable(ctx), arg))
        }
        processBlock(ctx, automaton, block, proc.statements)

        ctx.procStack.removeLast()
        return resultVar
    }

    private fun processBlock(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stats: List<Statement>
    ) = stats.forEach { processStatement(ctx, automaton, block, it) }

    private fun processStatement(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stat: Statement
    ) {
        when (stat) {
            is FunctionUsage -> throw IllegalStateException("Illegal")
            is ActionUsage -> processActUsage(ctx, automaton, block, stat)
            is ExpressionStatement -> processExprStat(ctx, automaton, block, stat)
            is ProcedureCall -> processProcedureCall(ctx, automaton, block, stat)
            is IfStatement -> processIf(ctx, automaton, block, stat)
            is VariableDeclaration -> processVariable(stat, ctx, automaton, block)
            is Assignment -> processAssign(stat, ctx, automaton, block)
            is ElseStatement -> throw IllegalStateException("Illegal ElseStatement")
        }
    }

    private fun processAssign(
        stat: Assignment,
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>
    ) {
        val left = stat.left.toString()
        var expr = buildExpr(ctx, automaton, block, stat.value)
        val name = ctx[left]
        val type = ctx.type(name)
        val lvar = LVar(name, type)

        if (stat.op != AssignOps.ASSIGN) {
            val assignOp = stat.op.string
            val op = assignOp.substring(0, assignOp.length - 1)
            expr = LBinOp(lvar, op, expr)
        }

        if (left == RESULT && ctx.procStack.size == 1) {
            block.add(mkResult(ctx, lvar, expr))
        } else {
            block.add(mkAssign(ctx, lvar, expr))
        }
    }

    private fun processVariable(
        stat: VariableDeclaration,
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>
    ) {
        val variable = stat.variable.variable(ctx)
        val expr = stat.variable.initialValue?.let { buildExpr(ctx, automaton, block, it) }
        block.add(mkDecl(ctx, variable, expr))
    }

    private fun processIf(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stat: IfStatement
    ) {
        val cond = buildExpr(ctx, automaton, block, stat.value)
        val thenBlock = mutableListOf<PStat>()
        val elseBlock = mutableListOf<PStat>()
        processBlock(ctx, automaton, thenBlock, stat.ifStatements)
        processBlock(ctx, automaton, elseBlock, stat.elseStatements?.statements ?: listOf())
        block.add(PIf(cond, thenBlock, elseBlock))
    }

    private fun processExprStat(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stat: ExpressionStatement
    ) {
        buildExpr(ctx, automaton, block, stat.expression)
    }

    private fun processActUsage(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stat: ActionUsage
    ): LVar {
        val action = stat.actionReference.resolve()
            ?: throw IllegalArgumentException("Can't find action: ${stat.actionReference}")
        val actionType = action.returnType.type()
        val tmpName = mkActionResVarName(ctx)
        val tmpVar = LVar(tmpName, actionType)
        val expr = LActionCall(
            action.name,
            actionType,
            action.argumentDescriptors.map { it.typeReference.type()!! },
            stat.arguments.map { buildExpr(ctx, automaton, block, it) }
        )
        block.add(mkActionResult(ctx, tmpVar, expr))
        return LVar(tmpName, actionType)
    }

    private fun processActExpr(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        stat: ActionExpression
    ): LVar = processActUsage(ctx, automaton, block, stat.actionUsage)

    private fun buildExpr(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        expr: Expression
    ): LExpr {
        return when (expr) {
            // Literals
            is NullLiteral -> LNull
            is BoolLiteral -> LBool(expr.value)
            is CharacterLiteral -> LChar(expr.value)
            is FloatLiteral -> LFloat(expr.value.toDouble())
            is IntegerLiteral -> LInt(expr.value.toInt())
            is UnsignedInt8Literal -> LUInt8(expr.value)
            is UnsignedInt16Literal -> LUInt16(expr.value)
            is UnsignedInt32Literal -> LUInt32(expr.value)
            is UnsignedInt64Literal -> LUInt64(expr.value)
            is StringLiteral -> LString(expr.value)
            is ArrayLiteral -> LArray(expr.value.map { buildExpr(ctx, automaton, block, it) })

            // Operations
            is BinaryOpExpression -> LBinOp(
                enumConstantValue(ctx, automaton, block, expr.left, expr.right)
                    ?: buildExpr(ctx, automaton, block, expr.left),
                expr.op.string,
                enumConstantValue(ctx, automaton, block, expr.right, expr.left)
                    ?: buildExpr(ctx, automaton, block, expr.right)
            )

            is UnaryOpExpression -> {
                val value = buildExpr(ctx, automaton, block, expr.value)
                if (expr.op.string == "!" && value is LBool) LBool(!value.value)
                else LUnOp(expr.op.string, value)
            }

            // Calls
            is ActionExpression -> processActExpr(ctx, automaton, block, expr)

            // Var
            is Variable -> mkVar(ctx, expr)
            is NamedArgumentWithValue -> buildExpr(ctx, automaton, block, expr.value)

            is VariableAccess -> {
                val resolved = expr.variable.resolve()
                val variable: LVar
                if (resolved != null) {
                    variable = resolved.variable(ctx)
                } else {
                    val name = ctx[expr.variable.name]
                    val type = ctx.type(name)
                    variable = LVar(name, type)
                }
                if (expr.childAccess != null) TODO("Not supported yet")
                return variable
            }

            is ThisAccess -> TODO("Not supported yet")
            is ArrayAccess -> TODO("Not supported yet")
            is AutomatonVariableInvoke -> TODO("Not supported yet")

            is CallAutomatonConstructor -> TODO("Not supported yet")
            is HasAutomatonConcept -> TODO("Not supported yet")
            is OldValue -> TODO("Not supported yet")
            is TypeOperationExpression -> TODO("Not supported yet")

            is AutomatonProcedureCall -> TODO("Not supported yet")
            is FunctionUsageExpression -> TODO("Not supported yet")
            is ProcExpression -> processProcedureCall(ctx, automaton, block, expr.procedureCall)
        }
    }

    // Walks a dotted qualified-access chain (e.g. `net.lbruun.hexutils.Hex.HexCase.UPPER`) into its
    // segment names. LibSL's parser represents this purely syntactically as nested VariableAccess
    // hops - there is no dedicated "enum constant reference" node - so a chain like this is
    // otherwise indistinguishable from an unresolved multi-part variable name.
    private fun chainSegments(expr: Expression): List<String>? {
        if (expr !is VariableAccess) return null
        val segments = mutableListOf(expr.fieldName)
        var cur = expr.childAccess
        while (cur != null) {
            if (cur !is VariableAccess) return null
            segments.add(cur.fieldName)
            cur = cur.childAccess
        }
        return segments
    }

    private fun exprType(ctx: PreCtx, expr: Expression): Type? = when (expr) {
        is Variable -> expr.typeReference.type()
        is VariableAccess -> if (expr.childAccess != null) null else {
            val resolved = expr.variable.resolve()
            if (resolved != null) resolved.variable(ctx).type else ctx.type(ctx[expr.variable.name])
        }
        else -> null
    }

    /** Resolves a dotted qualified-access expression like `net.lbruun.hexutils.Hex.HexCase.UPPER`
     * to the literal declared for that entry (`enum ... { UPPER = 1; }`), when [other] - the other
     * side of a `==`/`!=` comparison - resolves to that enum type. Since the parser has no notion
     * of "this chain names an enum constant," the only way to know which *trailing* segment is the
     * entry name (as opposed to a package/type qualifier) is to check it against the enum type
     * inferred from the comparison's other operand - this does not attempt to resolve the whole
     * qualified name as a type path on its own.
     */
    private fun enumConstantValue(
        ctx: PreCtx,
        automaton: Automaton,
        block: MutableList<PStat>,
        self: Expression,
        other: Expression
    ): LExpr? {
        val entryName = chainSegments(self)?.lastOrNull() ?: return null
        val enumType = exprType(ctx, other) as? EnumType ?: return null
        val entry = enumType.entries[entryName] ?: return null
        return buildExpr(ctx, automaton, block, entry)
    }

    private fun mkVar(ctx: PreCtx, variable: Variable): LVar {
        return LVar(ctx[variable.name], variable.typeReference.resolve()!!)
    }

    private fun mkDecl(ctx: PreCtx, variable: LVar): PDecl {
        val decl = PDecl(variable)
        ctx += variable
        return decl
    }

    private fun mkArg(ctx: PreCtx, variable: LVar) = mkDecl(ctx, variable)

    private fun mkResultDecl(ctx: PreCtx, variable: LVar) = mkDecl(ctx, variable).also { it.isResult = true }

    private fun mkDecl(ctx: PreCtx, variable: LVar, value: LExpr?): PDecl {
        if (value == null) return mkDecl(ctx, variable)
        return mkAssign(ctx, variable, value)
    }

    private fun mkAssign(ctx: PreCtx, variable: LVar, value: LExpr): PAssign {
        val assign = PAssign(variable, value)
        ctx += variable
        return assign
    }

    private fun mkActionResult(ctx: PreCtx, variable: LVar, value: LActionCall): PActionResult {
        val actionResult = PActionResult(variable, value)
        ctx += variable
        return actionResult
    }

    private fun mkResult(ctx: PreCtx, variable: LVar, value: LExpr) =
        mkAssign(ctx, variable, value).also { it.isResult = true }

    private fun TypeReference?.type(): Type? {
        if (this == null) return null
        val resolved = this.resolve() ?: throw IllegalStateException("Can't resolve type for $this")
        return if (resolved is TypeAlias) resolved.originalType.type()
        else resolved
    }

    private fun Variable.variable(ctx: PreCtx) = LVar(ctx[this.name], this.typeReference.type())

}

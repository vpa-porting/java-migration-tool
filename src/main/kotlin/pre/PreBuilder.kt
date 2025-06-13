package porting.pre

import org.jetbrains.research.libsl.nodes.*
import org.jetbrains.research.libsl.nodes.Function
import org.jetbrains.research.libsl.nodes.references.TypeReference
import org.jetbrains.research.libsl.type.Type
import org.jetbrains.research.libsl.type.TypeAlias
import porting.RESULT
import porting.expr.*

class PreBuilder {

    private var actResCnt = 0
    private fun mkActionResVarName(ctx: PreCtx) = ctx.mkName("ACT_RES#${++actResCnt}")

    fun processFunction(func: Function, automaton: Automaton): PFunc {
        val internalVars = mutableSetOf<String>()
        val ctx = PreCtx(internal = internalVars)
        ctx.procStack.addLast(func.name)

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

        val resultVar = LVar(ctx[RESULT], func.returnType.type())
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
                buildExpr(ctx, automaton, block, expr.left),
                expr.op.string,
                buildExpr(ctx, automaton, block, expr.right)
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

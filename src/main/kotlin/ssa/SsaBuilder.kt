package porting.ssa

import porting.expr.LActionCall
import porting.expr.LBool
import porting.expr.LVar
import porting.pre.*

class SsaBuilder {

    private val ctx = SsaCtx()

    private val body = BasicBlock()
    private val internal = BasicBlock().also { it.next = body }

    fun build(func: PFunc): SsaFunction {
        val args = buildArgsBlock(ctx, func.args)
        buildBlock(ctx, internal, func.internal)
        buildBlock(ctx, body, listOf(func.resultVar))
        buildBlock(ctx, body, func.body)
        return SsaFunction(args, internal, body, ctx)
    }

    private fun buildArgsBlock(ctx: SsaCtx, statBlock: List<PStat>): List<DeclStat> {
        return statBlock.map { buildArgStat(ctx, it as PDecl) }
    }

    private fun buildArgStat(ctx: SsaCtx, stat: PDecl): DeclStat {
        //ctx.incOrAdd(stat.name.name)
        val variable = stat.name//.renameVar(ctx::get)
        ctx.varMap.arguments.add(variable)
        val arg = DeclStat(variable)
        return arg
    }

    private fun buildBlock(ctx: SsaCtx, result: BasicBlock, statBlock: List<PStat>) {
        for (i in statBlock.indices) {
            when (val stat = statBlock[i]) {
                is PActionResult -> buildActionResultStat(ctx, result, stat)
                is PAssign -> buildAssignStat(ctx, result, stat)
                is PDecl -> buildDeclStat(ctx, stat)
                is PIf -> {
                    val rest = statBlock.subList(i + 1, statBlock.size)
                    val ifBlock = buildIfStat(ctx, stat, rest)
                    result.next = ifBlock
                    return
                }
            }
        }
    }

    private fun buildActionResultStat(ctx: SsaCtx, result: BasicBlock, stat: PActionResult) {
        val expr = stat.value.normalize(ctx.varMap)//.renameVar(ctx::get)
        //ctx.incOrAdd(stat.name.name)
        val variable = stat.name//.renameVar(ctx::get)
        val assign = mkActionResult(ctx, variable, expr)
        ctx.varMap.actionResults.add(variable)
        result.block.add(assign)
    }

    private fun buildAssignStat(ctx: SsaCtx, block: BasicBlock, stat: PAssign) {
        val expr = stat.value.normalize(ctx.varMap)//.renameVar(ctx::get)
        //ctx.incOrAdd(stat.name.name)
        val variable = stat.name//.renameVar(ctx::get)
        if (stat.isResult) {
            block.block.add(ResultStat(variable, expr))
        } else {
            ctx.varMap.expressions[variable] = expr
        }
    }

    private fun buildDeclStat(ctx: SsaCtx, stat: PDecl) {
        //ctx.incOrAdd(stat.name.name)
    }

    private fun buildIfStat(ctx: SsaCtx, ifStat: PIf, rest: List<PStat>): SsaBlock {
        val cond = ifStat.value.normalize(ctx.varMap)//.renameVar(ctx::get)
        val ifBlock = IfBlock(cond)
        val thenCtx = ctx.copy()
        val elseCtx = ctx.copy()
        val thenBlock = BasicBlock()
        val elseBlock = BasicBlock()

        if (cond is LBool) {
            if (cond.value) {
                buildBlock(thenCtx, thenBlock, ifStat.thenStat + rest)
                return thenBlock
            } else {
                buildBlock(elseCtx, elseBlock, ifStat.elseStat + rest)
                return elseBlock
            }
        } else {
            buildBlock(thenCtx, thenBlock, ifStat.thenStat + rest)
            buildBlock(elseCtx, elseBlock, ifStat.elseStat + rest)

            ifBlock.thenBlock = thenBlock
            ifBlock.elseBlock = elseBlock

            return ifBlock
        }
    }

    private fun mkActionResult(ctx: SsaCtx, variable: LVar, expr: LActionCall): ActionCallStat {
        ctx.varMap.expressions[variable] = expr
        return ActionCallStat(variable, expr)
    }
}
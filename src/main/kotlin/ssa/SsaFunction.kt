package porting.ssa

data class SsaFunction(
    val args: List<DeclStat>,
    val internal: SsaBlock,
    val body: SsaBlock,
    val ctx: SsaCtx
)
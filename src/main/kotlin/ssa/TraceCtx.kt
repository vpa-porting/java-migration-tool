package porting.ssa

data class TraceCtx(
    var traceInd: Int
) {
    fun next() = traceInd++
}

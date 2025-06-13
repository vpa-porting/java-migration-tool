package porting.smt

data class TraceSMT(
    val traceName: String,
    val args: List<DeclSMT>,
    val actions: List<ActionCallSMT>,
    val conditions: List<ExprSMT>,
    val actionArgs: List<ExprSMT>,
    val result: ResultSMT? = null
)

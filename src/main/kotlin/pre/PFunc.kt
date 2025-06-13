package porting.pre

data class PFunc(
    val internal: List<PStat>,
    val args: List<PDecl>,
    val resultVar: PDecl,
    val body: List<PStat>
) {
    fun mkString(sb: StringBuilder) {
        args.forEach { it.mkString(sb, 0) }
        body.forEach { it.mkString(sb, 0) }
    }
}

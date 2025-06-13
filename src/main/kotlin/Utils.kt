package porting

import com.github.javaparser.ParseResult
import com.github.javaparser.ast.CompilationUnit
import io.ksmt.decl.KFuncDecl
import io.ksmt.expr.KApp
import io.ksmt.expr.KExpr
import io.ksmt.sort.KBoolSort
import io.ksmt.sort.KIntSort
import io.ksmt.sort.KSort
import org.jetbrains.research.libsl.context.LslContextBase
import org.jetbrains.research.libsl.nodes.references.TypeReference
import org.jetbrains.research.libsl.type.Type
import porting.ssa.Trace
import porting.solver.param.ParamSolution
import porting.solver.trace.TraceSolution
import java.nio.file.Path

typealias KBoolExpr = KExpr<KBoolSort>
typealias KIntExpr = KExpr<KIntSort>

typealias TraceSolutionsMap = LinkedHashMap<Trace, List<TraceSolution>>
typealias ParamSolutionsMap = LinkedHashMap<TraceSolution, ParamSolution>
typealias TraceParamSolutionsMap = LinkedHashMap<Trace, ParamSolutionsMap>
typealias TraceSeq = List<Trace>

const val MAX_SOLUTION_LENGTH = 100
const val SEP = "$"

const val PRINT_DEBUG = false

const val RESULT = "result"
val LSL_CTX = DummyLslContext()

var tmpNameCnt = 0

fun Type?.type(): String = this?.name ?: "void"

fun <T> List<T>.copy(): MutableList<T> {
    val newList = mutableListOf<T>()
    this.forEach(newList::add)
    return newList
}

fun <T> List<T>.copy(copy: (T) -> T): MutableList<T> {
    val newList = mutableListOf<T>()
    this.forEach { newList.add(copy(it)) }
    return newList
}

fun <T> Set<T>.copy(): MutableSet<T> {
    val newSet = mutableSetOf<T>()
    this.forEach(newSet::add)
    return newSet
}

fun <K, V> Map<K, V>.copy(): MutableMap<K, V> {
    val newMap = mutableMapOf<K, V>()
    this.forEach(newMap::put)
    return newMap
}

fun String.isInt(): Boolean {
    return this.matches("-?\\d+".toRegex())
}

fun <T> ParseResult<T>.getOrPrintError(): T? {
    if (this.isSuccessful && this.result.isPresent) return this.result.get()
    System.err.println("Error while parsing $this: ${this.problems}")
    return null
}

fun CompilationUnit.path(projectPath: Path): Path {
    return projectPath.toAbsolutePath().relativize(this.storage.get().path)
}

fun <T, R> List<T>.cartesianProduct(other: List<R>): List<Pair<T, R>> {
    return this.map { a -> other.map { b -> a to b } }.flatten()
}

fun mkTmpName() = "tmp${tmpNameCnt++}"

fun typeResolveError(typeRef: TypeReference) = IllegalArgumentException("An error while resolving type $typeRef")

fun sameTraceSeqs(first: List<TraceSeq>, second: List<TraceSeq>): Boolean {
    if (first.size != second.size) return false
    for (ind in first.indices) {
        if (!sameTraceSeq(first[ind], second[ind])) return false
    }
    return true
}

fun sameTraceSeq(first: TraceSeq, second: TraceSeq): Boolean {
    if (first.size != second.size) return false
    for (ind in first.indices) {
        if (first[ind].function != second[ind].function) return false
    }
    return true
}

operator fun <T : KSort> KFuncDecl<T>.invoke(vararg args: KExpr<*>): KApp<T, *> {
    return this.apply(args.toList())
}

class DummyLslContext : LslContextBase("") {
    override val parentContext: LslContextBase
        get() = throw IllegalStateException("")
}
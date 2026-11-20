package porting

import com.github.javaparser.ParseResult
import com.github.javaparser.ast.CompilationUnit
import java.nio.file.Path

fun <T> ParseResult<T>.getOrPrintError(): T? {
    if (this.isSuccessful && this.result.isPresent) return this.result.get()
    System.err.println("Error while parsing $this: ${this.problems}")
    return null
}

fun CompilationUnit.path(projectPath: Path): Path {
    return projectPath.toAbsolutePath().relativize(this.storage.get().path)
}

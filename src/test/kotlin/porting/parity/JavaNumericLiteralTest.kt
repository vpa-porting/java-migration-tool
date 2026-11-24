package porting.parity

import java.net.URLClassLoader
import java.nio.file.Files
import javax.tools.ToolProvider
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertNotNull
import porting.gen.toJavaStr
import ru.vpa.porting.expr.NumericLiterals

class JavaNumericLiteralTest {
    @Test fun `rendered numeric literals compile with exact boxed types and values`() {
        val values: List<Number> = listOf(
            Byte.MIN_VALUE, Byte.MAX_VALUE, Short.MIN_VALUE, Short.MAX_VALUE,
            Int.MIN_VALUE, Int.MAX_VALUE, Long.MIN_VALUE, Long.MAX_VALUE, 9007199254740993L,
            0.0f, -0.0f, 0.1f, Float.MIN_VALUE, Float.MAX_VALUE,
            Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY,
            0.0, -0.0, 0.1, Double.MIN_VALUE, Double.MAX_VALUE,
            Double.NaN, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY,
        )
        val root = Files.createTempDirectory("numeric-binding-")
        try {
            val source = root.resolve("NumericSample.java")
            val methods = values.mapIndexed { index, value ->
                val expression = NumericLiterals.from(value).toJavaStr(emptyMap())
                "public static Object value$index() { return $expression; }"
            }.joinToString("\n")
            Files.writeString(source, "public class NumericSample {\n$methods\n}")
            val compiler = assertNotNull(ToolProvider.getSystemJavaCompiler())
            assertEquals(0, compiler.run(null, null, null, "-d", root.toString(), source.toString()))
            URLClassLoader(arrayOf(root.toUri().toURL()), javaClass.classLoader).use { loader ->
                val api = loader.loadClass("NumericSample")
                values.forEachIndexed { index, expected ->
                    val actual = api.getMethod("value$index").invoke(null)
                    assertEquals<Class<*>>(expected.javaClass, actual.javaClass, "type at $index")
                    when (expected) {
                        is Float -> assertEquals(expected.toBits(), (actual as Float).toBits())
                        is Double -> assertEquals(expected.toBits(), (actual as Double).toBits())
                        else -> assertEquals(expected, actual)
                    }
                }
            }
        } finally {
            Files.walk(root).use { paths -> paths.sorted(Comparator.reverseOrder()).forEach(Files::delete) }
        }
    }
}

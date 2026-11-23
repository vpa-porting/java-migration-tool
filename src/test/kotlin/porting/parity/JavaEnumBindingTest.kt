package porting.parity

import kotlin.test.*
import java.nio.file.Files
import java.net.URLClassLoader
import javax.tools.ToolProvider
import porting.lsl.LSLParser
import porting.gen.toJavaStr

class JavaEnumBindingTest {
    @Test fun `Java rendering uses declared enum values rather than runtime ordinals`() {
        val root = Files.createTempDirectory("enum-binding-")
        try {
            val spec = root.resolve("enum.lsl")
            Files.writeString(spec, """
                libsl "1.0.0";
                library `EnumBinding` version "1";
                typealias bool = bool;
                enum sample.Mode { FIRST = 3; SECOND = 7; }
                type Source { }
                automaton Source: Source {
                    fun choose(mode: sample.Mode): bool { result = mode == sample.Mode.SECOND; }
                }
            """.trimIndent())
            val function = LSLParser.parse(root.toString(), spec.toString()).libFunctions.single()
            val expression = function.traces.single().result!!.value.toJavaStr(emptyMap())
            val java = root.resolve("EnumBindingSample.java")
            Files.writeString(java, """
                public class EnumBindingSample {
                    public enum Mode { FIRST, SECOND }
                    public static boolean choose(Mode mode) { return $expression; }
                }
            """.trimIndent())
            val compiler = assertNotNull(ToolProvider.getSystemJavaCompiler())
            assertEquals(0, compiler.run(null, null, null, "-d", root.toString(), java.toString()))
            URLClassLoader(arrayOf(root.toUri().toURL()), javaClass.classLoader).use { loader ->
                val api = loader.loadClass("EnumBindingSample")
                val enum = loader.loadClass("EnumBindingSample${'$'}Mode")
                val method = api.getMethod("choose", enum)
                assertEquals(false, method.invoke(null, enum.enumConstants[0]))
                assertEquals(true, method.invoke(null, enum.enumConstants[1]))
            }
        } finally {
            Files.walk(root).use { paths -> paths.sorted(Comparator.reverseOrder()).forEach { Files.delete(it) } }
        }
    }
}

package porting.corpus

import org.junit.jupiter.api.Test
import porting.fuzz.FuzzSubjects
import porting.spec.Base64IOChecks
import porting.spec.Base64IOChecks.Case
import porting.spec.Base64IOModel
import java.nio.file.Files
import java.nio.file.Path
import javax.tools.ToolProvider
import porting.spec.Base64IOCharsetProbe
import java.io.File
import java.util.concurrent.TimeUnit
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class Base64IOMigrationTest {
    private val target get() = FuzzSubjects.base64IO.target
    private fun payload(n: Int) = ByteArray(n) { (it * 137 + n).toByte() }
    private fun compare(test: Case) {
        val source = Base64IOChecks.run(false, test)
        val generated = Base64IOChecks.runGenerated(target, test)
        assertEquals(source, generated, test.toString())
        if (source.exceptionClass == null)
            assertTrue(source.output.contentEquals(Base64IOChecks.successfulOutput(test.data(), test.lines())), test.toString())
    }

    @Test fun `generated stream encoder preserves output and traces across windows`() {
        val w = Base64IOModel.INPUT_WINDOW
        for (n in listOf(0, 1, 2, 3, 56, 57, 58, 59, 60, 113, 114, 115, 116, 117,
            w - 2, w - 1, w, w + 1, w + 2, 2 * w + 1, 19 * w + 1))
            for (lines in listOf(false, true)) compare(Case.normal(payload(n), lines, 4093))
    }

    @Test fun `generated encoder preserves failures partial effects ownership and null order`() {
        val w = Base64IOModel.INPUT_WINDOW
        for (n in listOf(0, 1, 58, 120, w + 5)) for (lines in listOf(false, true)) {
            val big = n > 512
            val chunk = if (big) 4093 else 7
            for (readAt in listOf(-1, 0, 1, n - 1, n)) for (partial in listOf(false, true))
                for (nullIn in listOf(false, true)) for (nullOut in listOf(false, true))
                    compare(Case(payload(n), lines, chunk, false, 2, readAt, partial, -1, -1, false, nullIn, nullOut))
            for (writeAt in listOf(0, 1, 75, 76, 77, 78, 80, 131071, 131072))
                compare(Case(payload(n), lines, chunk, false, 0, -1, false, writeAt, -1, false, false, false))
            for (callAt in listOf(0, 1, 2, 19))
                compare(Case(payload(n), lines, chunk, false, 0, -1, false, -1, callAt, false, false, false))
        }
        for (defaultRead in listOf(false, true)) for (defaultWrite in listOf(false, true))
            for (n in listOf(0, 1, 58, 120)) for (fail in listOf(-1, 0, 1, n))
                compare(Case(payload(n), true, 2, defaultRead, 2, fail, false, 77, -1, defaultWrite, false, false))
    }

    @Test fun `generated API compiles with JDK alone`() {
        target
        val source = Path.of("SpecCorpus/migbase64-to-java-util-base64/generated-base64io/src/main/java/Api.java")
        val out = Files.createTempDirectory("base64io-jdk-only")
        assertEquals(0, ToolProvider.getSystemJavaCompiler().run(null, null, null,
            "-classpath", "", "-d", out.toString(), source.toString()))
    }

    @Test fun `generated binding preserves default charset behavior in fresh JVMs`() {
        target
        val source = Path.of("SpecCorpus/migbase64-to-java-util-base64/generated-base64io/src/main/java/Api.java")
        val generated = Files.createTempDirectory("base64io-charset-generated")
        assertEquals(0, ToolProvider.getSystemJavaCompiler().run(null, null, null,
            "-classpath", "", "-d", generated.toString(), source.toString()))
        val testClasses = Path.of(Base64IOChecks::class.java.protectionDomain.codeSource.location.toURI())
        val jar = Path.of(com.migcomponents.migbase64.Base64IO::class.java.protectionDomain.codeSource.location.toURI())
        val classpath = listOf(generated, testClasses, jar).joinToString(File.pathSeparator)
        for (charset in listOf("UTF-8", "windows-1252", "UTF-16")) {
            val process = ProcessBuilder(Path.of(System.getProperty("java.home"), "bin", "java").toString(),
                "-Dfile.encoding=$charset", "-cp", classpath, Base64IOCharsetProbe::class.java.name, charset, "Api")
                .redirectErrorStream(true).start()
            val finished = process.waitFor(15, TimeUnit.SECONDS)
            if (!finished) process.destroyForcibly()
            assertTrue(finished, "Charset subprocess timed out: $charset")
            assertEquals(0, process.exitValue(), process.inputStream.readAllBytes().toString(Charsets.UTF_8))
        }
    }
}

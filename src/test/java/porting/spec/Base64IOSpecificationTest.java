package porting.spec;

import com.migcomponents.migbase64.Base64IO;
import org.junit.jupiter.api.Test;
import java.io.File;
import java.nio.file.Path;
import java.util.concurrent.TimeUnit;
import java.util.*;
import static org.junit.jupiter.api.Assertions.*;
import static porting.spec.Base64IOChecks.*;

class Base64IOSpecificationTest {
    private static byte[] payload(int size) {
        byte[] result = new byte[size];
        for (int i = 0; i < size; i++) result[i] = (byte) (i * 137 + size);
        return result;
    }

    /** Whole-input oracle, independent of the model's window and packet scheduling. */
    private static byte[] expected(byte[] data, boolean lines) {
        return successfulOutput(data, lines);
    }

    @Test void successfulOutputMatchesIndependentOracleAtLineAndWindowBoundaries() {
        int w = Base64IOModel.INPUT_WINDOW;
        int[] sizes = {0, 1, 2, 3, 54, 55, 56, 57, 58, 59, 60, 111, 112, 113, 114, 115, 116, 117,
            w - 2, w - 1, w, w + 1, w + 2, 2 * w - 1, 2 * w, 2 * w + 1, 19 * w + 1};
        for (int size : sizes) for (boolean lines : new boolean[]{false, true}) {
            byte[] data = payload(size);
            Case test = Case.normal(data, lines, 4093);
            Observation original = run(false, test), model = run(true, test);
            assertEquals(original, model, test.toString());
            assertNull(original.exceptionClass);
            assertArrayEquals(expected(data, lines), original.output, test.toString());
            assertEquals(size, original.consumed);
            assertTrue(original.events.stream().noneMatch(e -> e.contains("close") || e.contains("flush")));
        }
    }

    @Test void preservesMissingCrlfBeforePaddingAndObservableEmptyWrites() {
        Observation empty = run(false, Case.normal(new byte[0], false, 1));
        assertEquals(List.of("read3(0,98304,reuse=true)", "read=-1", "write3(0,0,reuse=true)"), empty.events);
        Observation tail = run(false, Case.normal(payload(58), true, Integer.MAX_VALUE));
        assertEquals(80, tail.output.length);
        assertTrue(tail.events.contains("write3(0,76,reuse=true)"));
        assertTrue(tail.events.contains("write3(0,0,reuse=true)"));
        assertEquals("write3(0,4,reuse=true)", tail.events.get(tail.events.size() - 1));
        assertArrayEquals(expected(payload(58), true), tail.output);
        assertMatches(Case.normal(payload(58), true, Integer.MAX_VALUE));
    }

    @Test void shortDefaultAndFiniteZeroReadsPreserveTheExactIoTrace() {
        for (int size : new int[]{0, 1, 2, 3, 57, 58, 59, 120})
            for (int chunk : new int[]{1, 2, 7, Integer.MAX_VALUE}) for (boolean lines : new boolean[]{false, true})
                for (boolean defaults : new boolean[]{false, true})
                    assertMatches(new Case(payload(size), lines, chunk, defaults, 2, -1, false,
                        -1, -1, false, false, false));
    }

    @Test void readErrorsPreserveIdentityConsumptionAndDelayOutputUntilACompleteWindow() {
        for (boolean defaults : new boolean[]{false, true}) for (boolean partial : new boolean[]{false, true})
            for (int failAt : new int[]{0, 1, 2, 3, 56, 57, 58, 120})
                assertMatches(new Case(payload(120), true, 7, defaults, 0, failAt, partial,
                    -1, -1, false, false, false));
        Case small = new Case(payload(120), true, 7, false, 0, 75, false, -1, -1, false, false, false);
        Observation failure = run(false, small);
        assertEquals("read", failure.injectedIdentity);
        assertEquals(75, failure.consumed);
        assertEquals(0, failure.output.length);
        int w = Base64IOModel.INPUT_WINDOW;
        Case nextWindow = new Case(payload(w + 12), true, w, false, 0, w + 3, true,
            -1, -1, false, false, false);
        assertMatches(nextWindow);
        assertArrayEquals(expected(Arrays.copyOf(nextWindow.data(), w), true), run(false, nextWindow).output);
    }

    @Test void outputErrorsIncludePartialWritesZeroLengthCallsAndDefaultBulkDispatch() {
        for (boolean defaults : new boolean[]{false, true}) for (int size : new int[]{0, 1, 2, 57, 58, 120}) {
            for (int byteAt : new int[]{0, 1, 2, 3, 75, 76, 77, 78, 79, 80, 81})
                assertMatches(new Case(payload(size), true, 7, false, 0, -1, false,
                    byteAt, -1, defaults, false, false));
            for (int call : new int[]{0, 1, 2, 3})
                assertMatches(new Case(payload(size), true, 7, false, 0, -1, false,
                    -1, call, defaults, false, false));
        }
        Observation zeroWriteFailure = run(false, new Case(new byte[0], false, 1, false, 0, -1, false,
            -1, 0, false, false, false));
        assertEquals("write", zeroWriteFailure.injectedIdentity);
        assertEquals(0, zeroWriteFailure.output.length);
        Observation partial = run(false, new Case(payload(58), true, 7, false, 0, -1, false,
            77, -1, false, false, false));
        assertEquals(77, partial.output.length);
        assertEquals("write", partial.injectedIdentity);
    }

    @Test void nullStreamsAreCheckedLazilyAndTheEncoderNeverOwnsThem() {
        for (int size : new int[]{0, 1, 120}) for (boolean in : new boolean[]{false, true})
            for (boolean out : new boolean[]{false, true}) for (int readFail : new int[]{-1, 0}) {
                Case test = new Case(payload(size), false, 7, false, 0, readFail, false, -1, -1, false, in, out);
                assertMatches(test);
                Observation actual = run(false, test);
                assertTrue(actual.events.stream().noneMatch(e -> e.contains("close") || e.contains("flush")));
            }
        Observation emptyNullOutput = run(false, new Case(new byte[0], false, 1, false, 0, -1, false,
            -1, -1, false, false, true));
        assertEquals(NullPointerException.class.getName(), emptyNullOutput.exceptionClass);
        assertEquals(List.of("read3(0,98304,reuse=true)", "read=-1"), emptyNullOutput.events);
    }

    @Test void publicConstructorCreatesDistinctInstances() {
        Base64IO first = new Base64IO(), second = new Base64IO();
        assertEquals(Base64IO.class, first.getClass());
        assertNotSame(first, second);
    }

    @Test void defaultCharsetDependencyIsCheckedInFreshJvms() throws Exception {
        String javaExecutable = Path.of(System.getProperty("java.home"), "bin", "java").toString();
        String classes = Path.of(Base64IOChecks.class.getProtectionDomain().getCodeSource().getLocation().toURI()).toString();
        String jar = Path.of(Base64IO.class.getProtectionDomain().getCodeSource().getLocation().toURI()).toString();
        for (String charset : new String[]{"UTF-8", "windows-1252", "UTF-16"}) {
            Process process = new ProcessBuilder(javaExecutable, "-Dfile.encoding=" + charset, "-cp", classes + File.pathSeparator + jar,
                Base64IOCharsetProbe.class.getName(), charset).redirectErrorStream(true).start();
            boolean completed = process.waitFor(15, TimeUnit.SECONDS);
            if (!completed) process.destroyForcibly();
            assertTrue(completed, "charset subprocess timed out: " + charset);
            byte[] diagnostics = process.getInputStream().readAllBytes();
            assertEquals(0, process.exitValue(), charset + ": " + new String(diagnostics, java.nio.charset.Charset.forName(charset)));
        }
    }
}

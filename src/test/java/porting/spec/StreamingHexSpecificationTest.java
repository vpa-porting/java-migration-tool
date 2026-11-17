package porting.spec;

import net.lbruun.hexutils.Hex;
import net.lbruun.hexutils.Hex.HexCase;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.io.TempDir;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import static org.junit.jupiter.api.Assertions.*;

/** Conformance of the operational specification to the original jar; no migrated code is used. */
class StreamingHexSpecificationTest {
    @TempDir Path dir;
    private static final String[] DELIMITERS = {null, "", ":", "||", "$", "\\", "gG", " ", "a", "0", "\n", "\u007f", "\u0080"};
    private static final HexCase[] CASES = {HexCase.LOWER, HexCase.UPPER, null};

    private record Observed(List<String> trace, String output, int consumed, String error, boolean sameFailure) {}

    private static Observed observe(boolean model, byte[] payload, HexCase hexCase, String delimiter,
                                    int readFailureAt, int writeFailureAt, boolean nullInput, boolean nullOutput) {
        List<String> trace = new ArrayList<>();
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        IOException injected = new IOException("injected");
        int[] consumed = {0};
        InputStream input = new InputStream() {
            public int read() throws IOException {
                trace.add("read:" + consumed[0]);
                if (consumed[0] == readFailureAt) throw injected;
                return consumed[0] == payload.length ? -1 : payload[consumed[0]++] & 255;
            }
            public void close() { trace.add("input.close"); }
        };
        OutputStream output = new OutputStream() {
            private void commit(int value) throws IOException {
                if (bytes.size() == writeFailureAt) throw injected;
                bytes.write(value);
            }
            public void write(int value) throws IOException {
                trace.add("one:" + value);
                commit(value);
            }
            public void write(byte[] values) throws IOException {
                trace.add("many:" + HexFormat.of().formatHex(values));
                for (byte value : values) commit(value & 255);
            }
            public void flush() { trace.add("output.flush"); }
            public void close() { trace.add("output.close"); }
        };
        Throwable error = null;
        try {
            if (model) StreamingHexModel.encodeStream(nullInput ? null : input, nullOutput ? null : output, hexCase, delimiter);
            else Hex.bytesToHexStreaming(nullInput ? null : input, nullOutput ? null : output, hexCase, delimiter);
        } catch (IOException | RuntimeException e) { error = e; }
        return new Observed(trace, HexFormat.of().formatHex(bytes.toByteArray()), consumed[0],
            error == null ? null : error.getClass().getName(), error == injected);
    }

    @Test void streamTraceAndOwnershipConformAcrossNullsAndDelimiters() {
        byte[][] payloads = {new byte[0], {(byte) 0xab}, {(byte) 0xab, (byte) 0xcd}, allOctets()};
        for (byte[] payload : payloads) for (HexCase c : CASES) for (String d : DELIMITERS)
            for (boolean nullIn : new boolean[]{false, true}) for (boolean nullOut : new boolean[]{false, true}) {
                Observed actual = observe(false, payload, c, d, -1, -1, nullIn, nullOut);
                assertEquals(actual, observe(true, payload, c, d, -1, -1, nullIn, nullOut),
                    "case=" + c + " delim=" + d + " size=" + payload.length + " nullInput=" + nullIn + " nullOutput=" + nullOut);
                assertTrue(actual.trace.stream().noneMatch(e -> e.contains("close") || e.contains("flush")));
            }
    }

    @Test void readAndWriteFailuresPreserveTracePartialOutputAndExceptionIdentity() {
        byte[] data = {(byte) 0xab, (byte) 0xcd, (byte) 0xef};
        for (String delimiter : new String[]{null, "", ":", "||"}) {
            for (int readAt = 0; readAt <= data.length; readAt++)
                assertEquals(observe(false, data, null, delimiter, readAt, -1, false, false),
                    observe(true, data, null, delimiter, readAt, -1, false, false));
            for (int writeAt = 0; writeAt < 12; writeAt++)
                assertEquals(observe(false, data, HexCase.UPPER, delimiter, -1, writeAt, false, false),
                    observe(true, data, HexCase.UPPER, delimiter, -1, writeAt, false, false));
        }
        assertEquals("61", observe(false, data, null, null, -1, 1, false, false).output); // ASCII 'a' survived.
    }

    private static byte[] allOctets() {
        byte[] result = new byte[256];
        for (int i = 0; i < result.length; i++) result[i] = (byte) i;
        return result;
    }

    /** Independent closed-form oracle for short, fault-free executions (no line-counter overflow). */
    private static byte[] blockFormat(byte[] input, HexCase c, String delimiter, int maxChars) {
        String delim = delimiter == null ? "" : delimiter;
        int quota = (maxChars + delim.length()) / (delim.length() + 2);
        HexFormat format = HexFormat.ofDelimiter(delim);
        if (c == HexCase.UPPER) format = format.withUpperCase();
        if (maxChars == -1 || quota <= 0) return format.formatHex(input).getBytes(StandardCharsets.US_ASCII);
        StringBuilder result = new StringBuilder();
        for (int offset = 0; offset < input.length;) {
            int end = offset + Math.min(quota, input.length - offset);
            result.append(format.formatHex(input, offset, end));
            if (end - offset == quota) result.append(System.lineSeparator());
            offset = end;
        }
        return result.toString().getBytes(StandardCharsets.US_ASCII);
    }

    @Test void fileEncodingMatchesBlockLawIncludingTrailingNewlineAndQuotaOverflow() throws Exception {
        Path in = dir.resolve("in"), original = dir.resolve("original"), model = dir.resolve("model");
        int[] maxima = {-1, -2, Integer.MIN_VALUE, 0, 1, 2, 3, 4, 5, 7, 16, Integer.MAX_VALUE};
        byte[] bytes = allOctets();
        for (int size : new int[]{0, 1, 2, 3, 4, 7, 16, 256}) {
            byte[] payload = Arrays.copyOf(bytes, size);
            Files.write(in, payload);
            for (HexCase c : CASES) for (String d : new String[]{null, "", ":", "||", "$", "\\"}) for (int max : maxima) {
                Hex.bytesToHexStreaming(in, original, c, d, max);
                StreamingHexModel.encodeFiles(in, model, c, d, max);
                byte[] expected = blockFormat(payload, c, d, max);
                assertArrayEquals(expected, Files.readAllBytes(original), "original size=" + size + " delim=" + d + " max=" + max);
                assertArrayEquals(expected, Files.readAllBytes(model), "model size=" + size + " delim=" + d + " max=" + max);
            }
        }
    }

    private record FileOutcome(String exception, List<String> suppressed, String output, String input) {}

    private FileOutcome fileCase(boolean model, int scenario, String delimiter, OpenOption[] options) throws Exception {
        Path root = Files.createTempDirectory(dir, "files-");
        Path input = root.resolve("in"), output = root.resolve("out");
        Files.write(input, new byte[]{(byte) 0xab, (byte) 0xcd});
        if (scenario == 1) Files.write(output, "STALE-CONTENT".getBytes(StandardCharsets.US_ASCII));
        if (scenario == 2) Files.delete(input);
        if (scenario == 3) output = input; // alias, default truncation only: never APPEND.
        if (scenario == 4) output = root.resolve("missing-parent/out");
        Throwable error = null;
        try {
            if (model) StreamingHexModel.encodeFiles(input, output, null, delimiter, 3, options);
            else Hex.bytesToHexStreaming(input, output, null, delimiter, 3, options);
        } catch (IOException | RuntimeException e) { error = e; }
        List<String> suppressed = new ArrayList<>();
        if (error != null) for (Throwable s : error.getSuppressed()) suppressed.add(s.getClass().getName());
        return new FileOutcome(error == null ? null : error.getClass().getName(), suppressed,
            Files.exists(output) ? HexFormat.of().formatHex(Files.readAllBytes(output)) : null,
            Files.exists(input) ? HexFormat.of().formatHex(Files.readAllBytes(input)) : null);
    }

    @Test void fileAcquisitionOptionsValidationOrderAndAliasingConform() throws Exception {
        OpenOption[][] options = {new OpenOption[0], {StandardOpenOption.CREATE_NEW},
            {StandardOpenOption.WRITE, StandardOpenOption.CREATE}, {StandardOpenOption.APPEND},
            {StandardOpenOption.APPEND, StandardOpenOption.TRUNCATE_EXISTING}, null};
        for (int scenario : new int[]{0, 1, 2, 4}) for (String delimiter : new String[]{null, "", ":", "a"})
            for (OpenOption[] opts : options)
                assertEquals(fileCase(false, scenario, delimiter, opts), fileCase(true, scenario, delimiter, opts),
                    "scenario=" + scenario + " delim=" + delimiter + " options=" + Arrays.toString(opts));
        for (String delimiter : new String[]{null, "a"})
            assertEquals(fileCase(false, 3, delimiter, new OpenOption[0]), fileCase(true, 3, delimiter, new OpenOption[0]));
        assertEquals("", fileCase(false, 1, "a", new OpenOption[0]).output);
        assertEquals("java.nio.file.NoSuchFileException", fileCase(false, 2, "a", new OpenOption[0]).exception);
        assertEquals("java.nio.file.FileAlreadyExistsException", fileCase(false, 1, "a", new OpenOption[]{StandardOpenOption.CREATE_NEW}).exception);
    }
}

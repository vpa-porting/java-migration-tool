package porting.spec;

import com.migcomponents.migbase64.Base64IO;
import java.io.*;
import java.nio.charset.Charset;
import java.util.*;

/** Trace-aware fixtures shared by deterministic and fuzz conformance checks. */
public final class Base64IOChecks {
    private Base64IOChecks() {}
    @FunctionalInterface public interface Encoder {
        void encode(InputStream input, OutputStream output, boolean lines) throws Exception;
    }

    public record Case(byte[] data, boolean lines, int maxRead, boolean defaultBulkRead, int zeroReads,
                       int readFailAt, boolean partialReadFailure, int writeFailAt, int writeFailCall,
                       boolean defaultBulkWrite, boolean nullInput, boolean nullOutput) {
        public Case {
            Objects.requireNonNull(data);
            if (maxRead < 1 || zeroReads < 0) throw new IllegalArgumentException("invalid fixture configuration");
        }
        public static Case normal(byte[] data, boolean lines, int maxRead) {
            return new Case(data, lines, maxRead, false, 0, -1, false, -1, -1, false, false, false);
        }
        @Override public String toString() {
            return "size=" + data.length + " lines=" + lines + " maxRead=" + maxRead + " defaultRead=" + defaultBulkRead +
                " zeroReads=" + zeroReads + " readFailAt=" + readFailAt + " partialReadFailure=" + partialReadFailure +
                " writeFailAt=" + writeFailAt + " writeFailCall=" + writeFailCall + " defaultWrite=" + defaultBulkWrite +
                " nullInput=" + nullInput + " nullOutput=" + nullOutput;
        }
    }

    public static final class Observation {
        public final byte[] output;
        public final List<String> events;
        public final int consumed;
        public final String exceptionClass;
        public final String injectedIdentity;
        Observation(byte[] output, List<String> events, int consumed, Throwable error, IOException readError, IOException writeError) {
            this.output = output;
            this.events = List.copyOf(events);
            this.consumed = consumed;
            this.exceptionClass = error == null ? null : error.getClass().getName();
            this.injectedIdentity = error == readError ? "read" : error == writeError ? "write" : null;
        }
        @Override public boolean equals(Object other) {
            return other instanceof Observation o && Arrays.equals(output, o.output) && events.equals(o.events) &&
                consumed == o.consumed && Objects.equals(exceptionClass, o.exceptionClass) && Objects.equals(injectedIdentity, o.injectedIdentity);
        }
        @Override public int hashCode() { return Objects.hash(Arrays.hashCode(output), events, consumed, exceptionClass, injectedIdentity); }
        @Override public String toString() {
            return "output=" + output.length + " bytes " + HexFormat.of().formatHex(output, 0, Math.min(48, output.length)) +
                ", consumed=" + consumed + ", error=" + exceptionClass + ", identity=" + injectedIdentity +
                ", events=" + events.size() + " " + events.subList(0, Math.min(10, events.size()));
        }
    }

    public static Observation run(boolean model, Case test) {
        return run(model ? Base64IOModel::encode : Base64IO::encode, test);
    }

    public static Observation runGenerated(Class<?> api, Case test) throws Exception {
        var method = api.getMethod("encode", InputStream.class, OutputStream.class, boolean.class);
        return run((input, output, lines) -> {
            try { method.invoke(null, input, output, lines); }
            catch (java.lang.reflect.InvocationTargetException failure) {
                Throwable cause = failure.getCause();
                if (cause instanceof Exception e) throw e;
                if (cause instanceof Error e) throw e;
                throw new AssertionError(cause);
            }
        }, test);
    }

    public static Observation run(Encoder encoder, Case test) {
        List<String> events = new ArrayList<>();
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        IOException readError = new IOException("injected read error");
        IOException writeError = new IOException("injected write error");
        int[] position = {0};
        InputStream input = new InputStream() {
            int zeroLeft = test.zeroReads();
            byte[] previous;
            @Override public int read() throws IOException {
                events.add("read1@" + position[0]);
                if (position[0] == test.readFailAt()) throw readError;
                return position[0] == test.data().length ? -1 : test.data()[position[0]++] & 255;
            }
            @Override public int read(byte[] target, int offset, int length) throws IOException {
                events.add("read3(" + offset + "," + length + ",reuse=" + (previous == null || previous == target) + ")");
                previous = target;
                if (zeroLeft > 0) { zeroLeft--; events.add("read=0"); return 0; }
                int count;
                if (test.defaultBulkRead()) {
                    count = super.read(target, offset, Math.min(length, test.maxRead()));
                } else {
                    if (position[0] == test.readFailAt()) throw readError;
                    if (position[0] == test.data().length) count = -1;
                    else {
                        count = Math.min(Math.min(length, test.maxRead()), test.data().length - position[0]);
                        if (test.readFailAt() > position[0]) count = Math.min(count, test.readFailAt() - position[0]);
                        System.arraycopy(test.data(), position[0], target, offset, count);
                        position[0] += count;
                        if (test.partialReadFailure() && position[0] == test.readFailAt()) throw readError;
                    }
                }
                events.add("read=" + count);
                return count;
            }
            @Override public void close() { events.add("input.close"); }
        };
        OutputStream output = new OutputStream() {
            int calls;
            byte[] previous;
            private void commit(int value) throws IOException {
                if (bytes.size() == test.writeFailAt()) throw writeError;
                bytes.write(value);
            }
            @Override public void write(int value) throws IOException {
                events.add("write1(" + value + ")");
                commit(value);
            }
            @Override public void write(byte[] source, int offset, int length) throws IOException {
                events.add("write3(" + offset + "," + length + ",reuse=" + (previous == null || previous == source) + ")");
                previous = source;
                if (calls++ == test.writeFailCall()) throw writeError;
                if (test.defaultBulkWrite()) super.write(source, offset, length);
                else for (int i = 0; i < length; i++) commit(source[offset + i]);
            }
            @Override public void flush() { events.add("output.flush"); }
            @Override public void close() { events.add("output.close"); }
        };
        Throwable failure = null;
        try {
            encoder.encode(test.nullInput() ? null : input, test.nullOutput() ? null : output, test.lines());
        } catch (Exception e) { failure = e; }
        return new Observation(bytes.toByteArray(), events, position[0], failure, readError, writeError);
    }

    public static void assertMatches(Case test) {
        Observation source = run(false, test), model = run(true, test);
        if (!source.equals(model)) throw new AssertionError(test + "\noriginal: " + source + "\nspecification: " + model +
            "\nfirst trace difference: " + firstDifference(source.events, model.events));
    }

    /** Whole-input value oracle, independent of the operational model's packet schedule. */
    public static byte[] successfulOutput(byte[] data, boolean lines) {
        byte[] encoded = (lines ? Base64.getMimeEncoder(76, new byte[]{13, 10}) : Base64.getEncoder()).encode(data);
        int fullGroups = data.length / 3;
        if (lines && data.length % 3 != 0 && fullGroups > 0 && fullGroups % 19 == 0) {
            int split = encoded.length - 6;
            byte[] withoutBreak = new byte[encoded.length - 2];
            System.arraycopy(encoded, 0, withoutBreak, 0, split);
            System.arraycopy(encoded, split + 2, withoutBreak, split, 4);
            encoded = withoutBreak;
        }
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        byte[] platform = alphabet.getBytes(Charset.defaultCharset());
        for (int i = 0; i < encoded.length; i++) {
            int index = alphabet.indexOf(encoded[i]);
            if (index >= 0) encoded[i] = platform[index];
        }
        return encoded;
    }
    private static String firstDifference(List<String> a, List<String> b) {
        for (int i = 0; i < Math.min(a.size(), b.size()); i++) if (!a.get(i).equals(b.get(i))) return i + ": " + a.get(i) + " vs " + b.get(i);
        return a.size() == b.size() ? "none (compare output/error)" : "lengths " + a.size() + " vs " + b.size();
    }
}

package porting.spec;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Base64;

/** Executable operational specification, not generated migration code.
 * See SpecCorpus/migbase64-to-java-util-base64/BASE64IO_SPEC.md. */
public final class Base64IOModel {
    public static final int INPUT_WINDOW = 98_304;
    private static final String STANDARD_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    private static final byte[] SOURCE_ALPHABET = STANDARD_ALPHABET.getBytes(Charset.defaultCharset());
    private Base64IOModel() {}

    private static byte translate(byte encoded) {
        if (encoded == '=') return encoded; // Padding is a literal byte in the source, not charset encoded.
        return SOURCE_ALPHABET[STANDARD_ALPHABET.indexOf(encoded)];
    }

    public static void encode(InputStream input, OutputStream output, boolean lineSeparators) throws IOException {
        byte[] window = new byte[INPUT_WINDOW];
        byte[] packet = new byte[78];
        int columnGroups = 0;
        boolean pendingBreak = false;
        while (true) {
            int filled = 0;
            boolean eof = false;
            // A short read, including a finite zero return, does not release partial output.
            while (filled != window.length) {
                int count = input.read(window, filled, window.length - filled);
                if (count == -1) { eof = true; break; }
                filled += count;
            }
            int aligned = filled - filled % 3;
            byte[] encoded = Base64.getEncoder().encode(Arrays.copyOf(window, aligned));
            int next = 0;
            int queued = 0;
            while (next < encoded.length) {
                if (pendingBreak) {
                    packet[queued++] = 13;
                    packet[queued++] = 10;
                    pendingBreak = false;
                }
                int groups = Math.min(19 - columnGroups, (encoded.length - next) / 4);
                int characters = 4 * groups;
                for (int i = 0; i < characters; i++) packet[queued + i] = translate(encoded[next + i]);
                next += characters;
                queued += characters;
                columnGroups += groups;
                if (columnGroups == 19) {
                    output.write(packet, 0, queued);
                    queued = 0;
                    columnGroups = 0;
                    pendingBreak = lineSeparators;
                }
            }
            output.write(packet, 0, queued); // Observable even when queued == 0, including empty input.
            if (eof && filled != aligned) {
                byte[] tail = Base64.getEncoder().encode(Arrays.copyOfRange(window, aligned, filled));
                for (int i = 0; i < 4; i++) packet[i] = translate(tail[i]);
                // The original ignores pendingBreak for the padded tail. Preserve this quirk.
                output.write(packet, 0, 4);
            }
            if (eof) return;
        }
    }
}

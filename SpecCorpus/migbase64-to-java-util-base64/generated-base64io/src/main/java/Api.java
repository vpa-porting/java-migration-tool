import java.io.InputStream;
import java.io.OutputStream;

public class Api {

    public static void encode(InputStream input, OutputStream output, boolean lines) throws Exception {
        generated_encode(input, output, lines);
    }

    public static void generated_encode(java.io.InputStream input, java.io.OutputStream output, boolean lines) throws Exception {
        new Object() {

            private final String STANDARD_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

            private final byte[] SOURCE_ALPHABET = STANDARD_ALPHABET.getBytes(java.nio.charset.Charset.defaultCharset());

            private byte translate(byte encoded) {
                // Padding is a literal byte in the source, not charset encoded.
                if (encoded == '=')
                    return encoded;
                return SOURCE_ALPHABET[STANDARD_ALPHABET.indexOf(encoded)];
            }

            public void encode(java.io.InputStream input, java.io.OutputStream output, boolean lineSeparators, int windowBytes, int groupsPerLine) throws java.io.IOException {
                byte[] window = new byte[windowBytes];
                byte[] packet = new byte[4 * groupsPerLine + 2];
                int columnGroups = 0;
                boolean pendingBreak = false;
                while (true) {
                    int filled = 0;
                    boolean eof = false;
                    // A short read, including a finite zero return, does not release partial output.
                    while (filled != window.length) {
                        int count = input.read(window, filled, window.length - filled);
                        if (count == -1) {
                            eof = true;
                            break;
                        }
                        filled += count;
                    }
                    int aligned = filled - filled % 3;
                    byte[] encoded = java.util.Base64.getEncoder().encode(java.util.Arrays.copyOf(window, aligned));
                    int next = 0;
                    int queued = 0;
                    while (next < encoded.length) {
                        if (pendingBreak) {
                            packet[queued++] = 13;
                            packet[queued++] = 10;
                            pendingBreak = false;
                        }
                        int groups = Math.min(groupsPerLine - columnGroups, (encoded.length - next) / 4);
                        int characters = 4 * groups;
                        for (int i = 0; i < characters; i++) packet[queued + i] = translate(encoded[next + i]);
                        next += characters;
                        queued += characters;
                        columnGroups += groups;
                        if (columnGroups == groupsPerLine) {
                            output.write(packet, 0, queued);
                            queued = 0;
                            columnGroups = 0;
                            pendingBreak = lineSeparators;
                        }
                    }
                    // Observable even when queued == 0, including empty input.
                    output.write(packet, 0, queued);
                    if (eof && filled != aligned) {
                        byte[] tail = java.util.Base64.getEncoder().encode(java.util.Arrays.copyOfRange(window, aligned, filled));
                        for (int i = 0; i < 4; i++) packet[i] = translate(tail[i]);
                        // The original ignores pendingBreak for the padded tail. Preserve this quirk.
                        output.write(packet, 0, 4);
                    }
                    if (eof)
                        return;
                }
            }
        }.encode(input, output, lines, 98304, 19);
    }
}

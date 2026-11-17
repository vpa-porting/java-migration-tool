package porting.spec;

import net.lbruun.hexutils.Hex.HexCase;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.HexFormat;

/** Executable operational specification; see STREAMING_ENCODING_SPEC.md.
 * This is a test oracle, not a migration target or a generated replacement. */
public final class StreamingHexModel {
    private StreamingHexModel() {}

    private enum Phase { READ, DELIMITER, HIGH_DIGIT, LOW_DIGIT, LINE_END }

    public static void encodeStream(InputStream input, OutputStream output, HexCase hexCase, String delimiter)
            throws IOException {
        encode(input, output, hexCase, delimiter, -1);
    }

    public static void encodeFiles(Path input, Path output, HexCase hexCase, String delimiter,
                                   int maxChars, OpenOption... options) throws IOException {
        // Resource acquisition, buffering, close order and suppression use the JDK
        // protocol itself, rather than approximating it by readAllBytes/write.
        try (var source = new BufferedInputStream(Files.newInputStream(input));
             var target = new BufferedOutputStream(Files.newOutputStream(output, options))) {
            encode(source, target, hexCase, delimiter, maxChars);
        }
    }

    static void encode(InputStream input, OutputStream output, HexCase hexCase, String delimiter,
                       int maxChars) throws IOException {
        if (delimiter != null && delimiter.chars().anyMatch(c -> c < 32 || c > 126 || HexFormat.isHexDigit(c)))
            throw new IllegalArgumentException("invalid delimiter");
        byte[] lineEnd = System.lineSeparator().getBytes(StandardCharsets.US_ASCII);
        byte[] separator = delimiter == null ? null : delimiter.getBytes(StandardCharsets.US_ASCII);
        int width = separator == null ? 0 : separator.length;
        int quota = (maxChars + width) / (width + 2); // Java int32 overflow and truncation toward zero.
        HexFormat format = hexCase == HexCase.UPPER ? HexFormat.of().withUpperCase() : HexFormat.of();
        Phase phase = Phase.READ;
        boolean firstWritten = false;
        int onLine = 0;
        String digits = null;
        while (true) {
            switch (phase) {
                case READ:
                    int next = input.read();
                    if (next == -1) return;
                    digits = format.toHexDigits((byte) next);
                    phase = Phase.DELIMITER;
                    break;
                case DELIMITER:
                    if (separator != null) {
                        if (firstWritten) output.write(separator); // Includes a zero-length bulk write.
                        else firstWritten = true;
                    }
                    phase = Phase.HIGH_DIGIT;
                    break;
                case HIGH_DIGIT:
                    output.write(digits.charAt(0));
                    phase = Phase.LOW_DIGIT;
                    break;
                case LOW_DIGIT:
                    output.write(digits.charAt(1));
                    if (maxChars != -1) {
                        onLine++;
                        phase = onLine == quota ? Phase.LINE_END : Phase.READ;
                    } else phase = Phase.READ;
                    break;
                case LINE_END:
                    output.write(lineEnd);
                    firstWritten = false;
                    onLine = 0;
                    phase = Phase.READ;
                    break;
            }
        }
    }
}

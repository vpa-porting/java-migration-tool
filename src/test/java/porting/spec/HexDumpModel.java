package porting.spec;

import java.io.PrintStream;
import java.util.HexFormat;
import java.util.Objects;
import java.util.function.Consumer;
import net.lbruun.hexutils.Hex.HexCase;

/** Independent block-layout specification, not generated code. See EXTENSION_PLAN.md. */
public final class HexDumpModel {
    private HexDumpModel() {}
    private static int count(int n, int width) { return n / width + (n % width == 0 ? 0 : 1); }

    private static void rows(byte[] data, HexCase hexCase, int width, int indent, Consumer<String> emit) {
        Objects.requireNonNull(data);
        if (width < 1 || indent < 0) throw new IllegalArgumentException();
        int digits = Math.max(4, Integer.toString(data.length).length());
        int capacity = indent + digits + 4 * width + 6;
        for (int row = 0; row < count(data.length, width); row++) {
            StringBuilder result = new StringBuilder(capacity);
            int start = row * width;
            result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
            StringBuilder display = new StringBuilder(5 + width);
            int end = start + Math.min(width, data.length - start);
            HexFormat format = HexFormat.ofDelimiter(" ");
            if (hexCase == HexCase.UPPER) format = format.withUpperCase();
            String hex = format.formatHex(data, start, end);
            result.append(hex).append(" ".repeat(3 * width - 1 - hex.length()));
            for (int i = start; i < end; i++) {
                int value = data[i] & 255;
                display.append(value >= 32 && value <= 126 ? (char) value : '.');
            }
            display.append(" ".repeat(width - (end - start)));
            result.append("  |").append(display).append('|');
            emit.accept(result.toString());
        }
    }
    public static String[] prettyPrint(byte[] data, HexCase hexCase, int width, int indent) {
        // Allocation deliberately precedes validation, as in the original overload.
        String[] result = new String[count(data.length, width)];
        int[] index = {0};
        rows(data, hexCase, width, indent, row -> result[index[0]++] = row);
        return result;
    }
    public static String[] prettyPrint(byte[] data) { return prettyPrint(data, HexCase.UPPER, 16, 4); }
    public static String prettyPrintStr(byte[] data, HexCase hexCase, int width, int indent, String separator) {
        StringBuilder result = new StringBuilder();
        rows(data, hexCase, width, indent, row -> result.append(row).append(separator));
        return result.toString();
    }
    public static String prettyPrintStr(byte[] data, HexCase hexCase, int width, int indent) {
        return prettyPrintStr(data, hexCase, width, indent, System.lineSeparator());
    }
    public static String prettyPrintStr(byte[] data) { return prettyPrintStr(data, HexCase.UPPER, 16, 4); }
    public static void prettyPrint(byte[] data, HexCase hexCase, int width, int indent, PrintStream output) {
        rows(data, hexCase, width, indent, row -> output.println(row));
    }
    public static void prettyPrint(byte[] data, PrintStream output) { prettyPrint(data, HexCase.UPPER, 16, 4, output); }
}

import net.lbruun.hexutils.Hex.HexCase;
import java.io.PrintStream;
import static java.lang.System.*;

public class Api {

    public static String[] prettyPrint(byte[] d, HexCase c, int w, int k) throws Exception {
        return generated_prettyPrint(d, c, w, k);
    }

    public static String[] prettyPrint(byte[] d) throws Exception {
        return generated_prettyPrint(d);
    }

    public static String prettyPrintStr(byte[] d, HexCase c, int w, int k, String s) throws Exception {
        return generated_prettyPrintStr(d, c, w, k, s);
    }

    public static String prettyPrintStr(byte[] d, HexCase c, int w, int k) throws Exception {
        return generated_prettyPrintStr(d, c, w, k);
    }

    public static String prettyPrintStr(byte[] d) throws Exception {
        return generated_prettyPrintStr(d);
    }

    public static void prettyPrint(byte[] d, HexCase c, int w, int k, PrintStream ps) throws Exception {
        generated_prettyPrint(d, c, w, k, ps);
    }

    public static void prettyPrint(byte[] d, PrintStream ps) throws Exception {
        generated_prettyPrint(d, ps);
    }

    public static String[] generated_prettyPrint(byte[] data, net.lbruun.hexutils.Hex.HexCase caseType, int width, int indent) throws Exception {
        String[] result0 = new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrint(data, caseType, width, indent);
        return result0;
    }

    public static String[] generated_prettyPrint(byte[] data) throws Exception {
        String[] result0 = new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrint(data);
        return result0;
    }

    public static String generated_prettyPrintStr(byte[] data, net.lbruun.hexutils.Hex.HexCase caseType, int width, int indent, String sep) throws Exception {
        String result0 = new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrintStr(data, caseType, width, indent, sep);
        return result0;
    }

    public static String generated_prettyPrintStr(byte[] data, net.lbruun.hexutils.Hex.HexCase caseType, int width, int indent) throws Exception {
        String result0 = java.lang.System.lineSeparator();
        String result1 = new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrintStr(data, caseType, width, indent, result0);
        return result1;
    }

    public static String generated_prettyPrintStr(byte[] data) throws Exception {
        String result0 = java.lang.System.lineSeparator();
        String result1 = new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrintStr(data, result0);
        return result1;
    }

    public static void generated_prettyPrint(byte[] data, net.lbruun.hexutils.Hex.HexCase caseType, int width, int indent, java.io.PrintStream ps) throws Exception {
        new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrint(data, caseType, width, indent, ps);
    }

    public static void generated_prettyPrint(byte[] data, java.io.PrintStream ps) throws Exception {
        new Object() {

            private int count(int n, int width) {
                return n / width + (n % width == 0 ? 0 : 1);
            }

            private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {
                java.util.Objects.requireNonNull(data);
                if (width < 1 || indent < 0)
                    throw new IllegalArgumentException();
                int digits = Math.max(4, Integer.toString(data.length).length());
                int capacity = indent + digits + 4 * width + 6;
                for (int row = 0; row < count(data.length, width); row++) {
                    StringBuilder result = new StringBuilder(capacity);
                    int start = row * width;
                    result.append(" ".repeat(indent)).append(String.format("%0" + digits + "d : ", start));
                    StringBuilder display = new StringBuilder(5 + width);
                    int end = start + Math.min(width, data.length - start);
                    java.util.HexFormat format = java.util.HexFormat.ofDelimiter(" ");
                    if (upper)
                        format = format.withUpperCase();
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

            private boolean upper(java.lang.Enum<?> c) {
                return c != null && c.name().equals("UPPER");
            }

            private String[] array(byte[] d, boolean u, int w, int k) {
                String[] result = new String[count(d.length, w)];
                int[] i = { 0 };
                rows(d, u, w, k, line -> result[i[0]++] = line);
                return result;
            }

            private String text(byte[] d, boolean u, int w, int k, String sep) {
                StringBuilder result = new StringBuilder();
                rows(d, u, w, k, line -> result.append(line).append(sep));
                return result.toString();
            }

            public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) {
                return array(d, upper(c), w, k);
            }

            public String[] prettyPrint(byte[] d) {
                return array(d, true, 16, 4);
            }

            public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) {
                return text(d, upper(c), w, k, sep);
            }

            public String prettyPrintStr(byte[] d, String sep) {
                return text(d, true, 16, 4, sep);
            }

            public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) {
                rows(d, upper(c), w, k, line -> ps.println(line));
            }

            public void prettyPrint(byte[] d, java.io.PrintStream ps) {
                rows(d, true, 16, 4, line -> ps.println(line));
            }
        }.prettyPrint(data, ps);
    }
}

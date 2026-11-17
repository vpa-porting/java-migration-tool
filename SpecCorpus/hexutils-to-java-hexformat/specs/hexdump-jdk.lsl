libsl "1.0.0";
library `JdkDumpLoops` version "21";
import hexdump-vocabulary;
annotation JavaAccessor(expr: string);
type JdkDumpLoops {}
@JavaAccessor(expr = "new Object() {\n    private int count(int n, int width) { return n / width + (n % width == 0 ? 0 : 1); }\n\n    private void rows(byte[] data, boolean upper, int width, int indent, java.util.function.Consumer<String> emit) {\n        java.util.Objects.requireNonNull(data);\n        if (width < 1 || indent < 0) throw new IllegalArgumentException();\n        int digits = Math.max(4, Integer.toString(data.length).length());\n        int capacity = indent + digits + 4 * width + 6;\n        for (int row = 0; row < count(data.length, width); row++) {\n            StringBuilder result = new StringBuilder(capacity);\n            int start = row * width;\n            result.append(\" \".repeat(indent)).append(String.format(\"%0\" + digits + \"d : \", start));\n            StringBuilder display = new StringBuilder(5 + width);\n            int end = start + Math.min(width, data.length - start);\n            java.util.HexFormat format = java.util.HexFormat.ofDelimiter(\" \");\n            if (upper) format = format.withUpperCase();\n            String hex = format.formatHex(data, start, end);\n            result.append(hex).append(\" \".repeat(3 * width - 1 - hex.length()));\n            for (int i = start; i < end; i++) {\n                int value = data[i] & 255;\n                display.append(value >= 32 && value <= 126 ? (char) value : '.');\n            }\n            display.append(\" \".repeat(width - (end - start)));\n            result.append(\"  |\").append(display).append('|');\n            emit.accept(result.toString());\n        }\n    }\n\n private boolean upper(java.lang.Enum<?> c) { return c != null && c.name().equals(\"UPPER\"); }\n private String[] array(byte[] d, boolean u, int w, int k) {\n   String[] result=new String[count(d.length,w)]; int[] i={0};\n   rows(d,u,w,k,line -> result[i[0]++]=line); return result;\n }\n private String text(byte[] d, boolean u, int w, int k, String sep) {\n   StringBuilder result=new StringBuilder(); rows(d,u,w,k,line -> result.append(line).append(sep)); return result.toString();\n }\n public String[] prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k) { return array(d,upper(c),w,k); }\n public String[] prettyPrint(byte[] d) { return array(d,true,16,4); }\n public String prettyPrintStr(byte[] d, java.lang.Enum<?> c, int w, int k, String sep) { return text(d,upper(c),w,k,sep); }\n public String prettyPrintStr(byte[] d, String sep) { return text(d,true,16,4,sep); }\n public void prettyPrint(byte[] d, java.lang.Enum<?> c, int w, int k, java.io.PrintStream ps) { rows(d,upper(c),w,k,line -> ps.println(line)); }\n public void prettyPrint(byte[] d, java.io.PrintStream ps) { rows(d,true,16,4,line -> ps.println(line)); }\n}")
automaton JdkDumpLoops: JdkDumpLoops {

 fun prettyPrint(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32): array<string> {
   result = action DUMP_ARRAY(data, caseType, width, indent);
 }
 fun prettyPrint(data: array<int8>): array<string> { result = action DUMP_ARRAY_DEFAULT(data); }
 fun prettyPrintStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, sep: string): string {
   result = action DUMP_STRING(data, caseType, width, indent, sep);
 }
 fun prettyPrintStr(data: array<int8>, sep: string): string { result = action DUMP_STRING_DEFAULT(data, sep); }
 fun prettyPrint(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, width: int32, indent: int32, ps: java.io.PrintStream) { action DUMP_PRINT(data, caseType, width, indent, ps); }
 fun prettyPrint(data: array<int8>, ps: java.io.PrintStream) { action DUMP_PRINT_DEFAULT(data, ps); }
}
type java.lang.System {}
automaton java.lang.System: java.lang.System { fun lineSeparator(): string { result = action PLATFORM_LINE_SEPARATOR(); } }

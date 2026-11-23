libsl "1.0.0";
library `JavaUtilHexFormat` version "21";

import hex-vocabulary;

annotation JavaAccessor(expr: string);
annotation JavaConstructor(javaType: string);
annotation Throws(exception: string);

type java.util.HexFormat.PlainLower {}
@JavaAccessor(expr = "java.util.HexFormat.of()")
automaton java.util.HexFormat.PlainLower: java.util.HexFormat.PlainLower {
    fun toHexDigits(b: int8): string {
        result = action HEX_BYTE_LOWER(b);
    }
    fun formatHex(data: array<int8>): string {
        result = action HEX_STR_LOWER(data);
    }
}

type java.util.HexFormat.PlainUpper {}
@JavaAccessor(expr = "java.util.HexFormat.of().withUpperCase()")
automaton java.util.HexFormat.PlainUpper: java.util.HexFormat.PlainUpper {
    fun toHexDigits(b: int8): string {
        result = action HEX_BYTE_UPPER(b);
    }
    fun formatHex(data: array<int8>): string {
        result = action HEX_STR_UPPER(data);
    }
}

// `$delim` in the accessor expression is bound to the function parameter of the same name.
type java.util.HexFormat.DelimLower {}
@JavaAccessor(expr = "java.util.HexFormat.ofDelimiter($delim)")
automaton java.util.HexFormat.DelimLower: java.util.HexFormat.DelimLower {
    fun formatHex(delim: string, data: array<int8>): string {
        result = action HEX_STR_DELIM_LOWER(data, delim);
    }
}

type java.util.HexFormat.DelimUpper {}
@JavaAccessor(expr = "java.util.HexFormat.ofDelimiter($delim).withUpperCase()")
automaton java.util.HexFormat.DelimUpper: java.util.HexFormat.DelimUpper {
    fun formatHex(delim: string, data: array<int8>): string {
        result = action HEX_STR_DELIM_UPPER(data, delim);
    }
}

type java.util.HexFormat.Parser {}
@JavaAccessor(expr = "java.util.HexFormat.of()")
automaton java.util.HexFormat.Parser: java.util.HexFormat.Parser {
    fun parseHex(s: java.lang.CharSequence): array<int8> {
        result = action PARSE_HEX(s);
    }
}

type java.util.HexFormat.DelimParser {}
@JavaAccessor(expr = "java.util.HexFormat.ofDelimiter($delim)")
automaton java.util.HexFormat.DelimParser: java.util.HexFormat.DelimParser {
    fun parseHex(delim: string, s: java.lang.CharSequence): array<int8> {
        result = action PARSE_HEX_DELIM(s, delim);
    }
}

type java.util.HexFormat {}
automaton java.util.HexFormat: java.util.HexFormat {
    fun isHexDigit(c: char): bool {
        result = action IS_HEX_CHAR(c);
    }
    fun fromHexDigit(c: char): int32 {
        result = action HEX_DIGIT_VALUE(c);
    }
}

type java.lang.String {}
automaton java.lang.String: java.lang.String {
    fun toCharArray(receiver: string): array<char> {
        result = action STR_TO_CHARS(receiver);
    }
    fun replaceAll(receiver: string, regex: string, replacement: string): string {
        result = action REPLACE_ALL(receiver, regex, replacement);
    }
    fun length(receiver: string): int32 {
        result = action LENGTH(receiver);
    }
    fun concat(receiver: string, other: string): string {
        result = action STRING_CONCAT(receiver, other);
    }
    fun substring(receiver: string, from: int32): string {
        result = action SUBSTRING_FROM(receiver, from);
    }
    fun startsWith(receiver: string, prefix: string): bool {
        result = action STRING_STARTS_WITH(receiver, prefix);
    }
    fun matches(receiver: string, regex: string): bool {
        result = action STRING_MATCHES(receiver, regex);
    }
    fun getBytes(receiver: string): array<int8> {
        result = action EMPTY_STRING_BYTES(receiver);
    }
    fun replace(receiver: string, oldChar: char, newChar: char): string {
        result = action REPLACE_CHAR(receiver, oldChar, newChar);
    }
}

@JavaConstructor(javaType = "java.lang.String")
automaton java.lang.String.Ctor: java.lang.String {
    fun fromChars(chars: array<char>): java.lang.CharSequence {
        result = action CHARS_TO_STR(chars);
    }
}

type java.lang.IllegalArgumentException {}
@Throws(exception = "java.lang.IllegalArgumentException")
automaton java.lang.IllegalArgumentException: java.lang.IllegalArgumentException {
    fun raise() {
        action THROW_ILLEGAL_ARGUMENT();
    }
}

type java.nio.file.Files {}
automaton java.nio.file.Files: java.nio.file.Files {
    fun readAllBytes(p: java.nio.file.Path): array<int8> {
        result = action READ_FILE_BYTES(p);
    }
    fun readString(p: java.nio.file.Path): string {
        result = action READ_FILE_TEXT(p);
    }
    fun write(p: java.nio.file.Path, data: array<int8>, options: array<java.nio.file.OpenOption>) {
        action WRITE_FILE_BYTES(p, data, options);
    }
}

type java.lang.StringBuilder {}
automaton java.lang.StringBuilder: java.lang.StringBuilder {
    fun append(receiver: java.lang.StringBuilder, chars: array<char>): java.lang.StringBuilder {
        result = action SB_APPEND_CHARS(receiver, chars);
    }
}

type java.lang.NullPointerException {}
@Throws(exception = "java.lang.NullPointerException")
automaton java.lang.NullPointerException: java.lang.NullPointerException {
    fun raise() {
        action THROW_NULL_POINTER();
    }
}

type JdkAlphabetLoops {}
@JavaAccessor(expr = "new Object() {\n public char[] map(char[] data, String from, String to) {\n   if(data == null) return null;\n   for(int i=0; i<data.length; i++) {\n     int index=from.indexOf(data[i]);\n     if(index<0) throw new IllegalArgumentException();\n     data[i]=to.charAt(index);\n   }\n   return data;\n }\n public char[] sequence(java.lang.CharSequence data, String from, String to) {\n   char[] result=new char[data.length()];\n   for(int i=0; i<data.length(); i++) {\n     int index=from.indexOf(data.charAt(i));\n     if(index<0) throw new IllegalArgumentException();\n     result[i]=to.charAt(index);\n   }\n   return result;\n }\n}")
automaton JdkAlphabetLoops: JdkAlphabetLoops {
    fun map(data: array<char>, from: string, to: string): array<char> {
        result = action MAP_ALPHABET_IN_PLACE(data, from, to);
    }
    fun sequence(data: java.lang.CharSequence, from: string, to: string): array<char> {
        result = action MAP_ALPHABET_SEQUENCE(data, from, to);
    }
}


automaton java.lang.CharSequence: java.lang.CharSequence {
    fun toString(receiver: java.lang.CharSequence): string {
        result = action SEQUENCE_TEXT(receiver);
    }
}

type java.util.regex.Pattern {}
automaton java.util.regex.Pattern: java.util.regex.Pattern {
    fun quote(s: string): string {
        result = action REGEX_QUOTE(s);
    }
}

type java.lang.reflect.Array {}
automaton java.lang.reflect.Array: java.lang.reflect.Array {
    fun getLength(array: array<int8>): int32 {
        result = action BYTE_ARRAY_LENGTH(array);
    }
}

type java.util.Arrays {}
automaton java.util.Arrays: java.util.Arrays {
    fun toString(options: array<java.nio.file.OpenOption>): string {
        result = action OPTION_NAMES(options);
    }
    fun copyOfRange(data: array<int8>, from: int32, to: int32): array<int8> {
        result = action COPY_BYTES_RANGE(data, from, to);
    }
}

type java.lang.StringIndexOutOfBoundsException {}
@Throws(exception = "java.lang.StringIndexOutOfBoundsException")
automaton java.lang.StringIndexOutOfBoundsException: java.lang.StringIndexOutOfBoundsException {
    fun raise() { action THROW_STRING_INDEX_OUT_OF_BOUNDS(); }
}

type java.lang.ArrayIndexOutOfBoundsException {}
@Throws(exception = "java.lang.ArrayIndexOutOfBoundsException")
automaton java.lang.ArrayIndexOutOfBoundsException: java.lang.ArrayIndexOutOfBoundsException {
    fun raise() { action THROW_ARRAY_INDEX_OUT_OF_BOUNDS(); }
}


@JavaConstructor(javaType = "java.lang.String")
automaton java.lang.String.FromBytes: java.lang.String {
    fun fromBytes(data: array<int8>, charset: string): string {
        result = action BYTES_TEXT(data, charset);
    }
}

// Literal standard options, cloned through the array's built-in method. No helper body.
type JdkWriteOptions {}
@JavaAccessor(expr = "(new java.nio.file.OpenOption[]{java.nio.file.StandardOpenOption.WRITE})")
automaton JdkWriteOptions: JdkWriteOptions {
    fun clone(): array<java.nio.file.OpenOption> {
        result = action WRITE_OPTIONS();
    }
}

type JdkAppendOptions {}
@JavaAccessor(expr = "(new java.nio.file.OpenOption[]{java.nio.file.StandardOpenOption.APPEND})")
automaton JdkAppendOptions: JdkAppendOptions {
    fun clone(): array<java.nio.file.OpenOption> {
        result = action APPEND_OPTIONS();
    }
}

type java.lang.NumberFormatException {}
@Throws(exception = "java.lang.NumberFormatException")
automaton java.lang.NumberFormatException: java.lang.NumberFormatException {
    fun raise() { action THROW_INVALID_HEX(); }
}

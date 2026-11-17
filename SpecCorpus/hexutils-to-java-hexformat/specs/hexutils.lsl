libsl "1.0.0";
library `HexUtils` version "1.0.0";

import hex-vocabulary;

// Ordinals follow the declaration order of Hex.HexCase in the jar (LOWER, UPPER).
enum net.lbruun.hexutils.Hex.HexCase {
    LOWER = 0;
    UPPER = 1;
}

type net.lbruun.hexutils.Hex {}
automaton net.lbruun.hexutils.Hex: net.lbruun.hexutils.Hex {

    // hexutils validates the delimiter before it looks at anything else: a hex digit, or a character
    // outside printable ASCII (32..126), is an IllegalArgumentException; null and empty are fine.
    proc delimiterRejected(delim: string): bool {
        var d: string = delim;
        if (delim == null) {
            d = "";
        }
        var kept: string = action REPLACE_ALL(d, "[^ -~]|[0-9A-Fa-f]", "");
        var keptLength: int32 = action LENGTH(kept);
        var length: int32 = action LENGTH(d);
        result = keptLength != length;
    }

    proc hexText(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase): string {
        if (caseType == net.lbruun.hexutils.Hex.HexCase.UPPER) {
            result = action HEX_STR_UPPER(data);
        } else {
            result = action HEX_STR_LOWER(data);
        }
    }

    proc delimitedHexText(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, delim: string): string {
        if (caseType == net.lbruun.hexutils.Hex.HexCase.UPPER) {
            result = action HEX_STR_DELIM_UPPER(data, delim);
        } else {
            result = action HEX_STR_DELIM_LOWER(data, delim);
        }
    }

    // A null delimiter means "no delimiter".
    proc hexTextOrDelimited(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, delim: string): string {
        if (delim == null) {
            result = hexText(data, caseType);
        } else {
            result = delimitedHexText(data, caseType, delim);
        }
    }

    // String decoding skips individual delimiter characters only at byte boundaries.
    // Read the maximal valid prefix so allocation overflow takes priority over a
    // later invalid pair. A one-character remainder fails reading its second nibble.
    // The source's HexConversionException remains approximated by a JDK exception.
    proc parseOrDelimited(s: java.lang.CharSequence, delim: string): array<int8> {
        if (delim == null) {
            result = action PARSE_HEX(s);
        } else {
            var text: string = action SEQUENCE_TEXT(s);
            var n: int32 = action LENGTH(text);
            var delimiterLength: int32 = action LENGTH(delim);
            if (n == 0) {
                result = action PARSE_HEX(s);
            } else {
                if ((n + delimiterLength) % (2 + delimiterLength) != 0) {
                    action THROW_ILLEGAL_ARGUMENT();
                } else {
                    var expected: int32 = (n + delimiterLength) / (2 + delimiterLength);
                    var pattern: string = "(?s)^((?:[0-9A-Fa-f]{2})*).*\\z";
                    var delimiters: string = "";
                    if (delimiterLength > 0) {
                        var quoted: string = action REGEX_QUOTE(delim);
                        var head: string = action STRING_CONCAT("[", quoted);
                        delimiters = action STRING_CONCAT(head, "]");
                        var p1: string = action STRING_CONCAT("(?s)^((?:", delimiters);
                        var p2: string = action STRING_CONCAT(p1, "*[0-9A-Fa-f]{2})*");
                        var p3: string = action STRING_CONCAT(p2, delimiters);
                        pattern = action STRING_CONCAT(p3, "*).*\\z");
                    }
                    var prefix: string = action REPLACE_ALL(text, pattern, "$1");
                    var digits: string = prefix;
                    if (delimiterLength > 0) {
                        digits = action REPLACE_ALL(prefix, delimiters, "");
                    }
                    var digitsLength: int32 = action LENGTH(digits);
                    if (digitsLength / 2 > expected) {
                        action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
                    } else {
                        var prefixLength: int32 = action LENGTH(prefix);
                        var rest: int32 = n - prefixLength;
                        if (rest == 1) {
                            action THROW_STRING_INDEX_OUT_OF_BOUNDS();
                        } else {
                            if (rest > 1) {
                                action THROW_INVALID_HEX();
                            } else {
                                var chars: array<char> = action STR_TO_CHARS(digits);
                                var sequence: java.lang.CharSequence = action CHARS_TO_STR(chars);
                                var parsed: array<int8> = action PARSE_HEX(sequence);
                                result = action COPY_BYTES_RANGE(parsed, 0, expected);
                            }
                        }
                    }
                }
            }
        }
    }

    fun byteToHex(b: int8, caseType: net.lbruun.hexutils.Hex.HexCase): array<char> {
        if (caseType == net.lbruun.hexutils.Hex.HexCase.UPPER) {
            var s: string = action HEX_BYTE_UPPER(b);
            result = action STR_TO_CHARS(s);
        } else {
            var s: string = action HEX_BYTE_LOWER(b);
            result = action STR_TO_CHARS(s);
        }
    }

    // Order of events in the original: delimiter check, then null data -> null.
    fun bytesToHex(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, delim: string): array<char> {
        if (delimiterRejected(delim)) {
            action THROW_ILLEGAL_ARGUMENT();
        } else {
            if (data == null) {
                result = null;
            } else {
                var s: string = hexTextOrDelimited(data, caseType, delim);
                result = action STR_TO_CHARS(s);
            }
        }
    }

    fun bytesToHexStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, delim: string): string {
        if (delimiterRejected(delim)) {
            action THROW_ILLEGAL_ARGUMENT();
        } else {
            if (data == null) {
                result = null;
            } else {
                result = hexTextOrDelimited(data, caseType, delim);
            }
        }
    }

    fun bytesToHexStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase): string {
        if (data == null) {
            result = null;
        } else {
            result = hexText(data, caseType);
        }
    }

    fun hexStrToBytes(s: java.lang.CharSequence, delim: string): array<int8> {
        if (delimiterRejected(delim)) {
            action THROW_ILLEGAL_ARGUMENT();
        } else {
            if (s == null) {
                result = null;
            } else {
                result = parseOrDelimited(s, delim);
            }
        }
    }

    fun hexStrToBytes(s: java.lang.CharSequence): array<int8> {
        if (s == null) {
            result = null;
        } else {
            result = action PARSE_HEX(s);
        }
    }

    // A null array is answered before the delimiter is looked at (unlike the CharSequence overload).
    fun hexStrToBytes(chars: array<char>, delim: string): array<int8> {
        if (chars == null) {
            result = null;
        } else {
            var s: java.lang.CharSequence = action CHARS_TO_STR(chars);
            if (delimiterRejected(delim)) {
                action THROW_ILLEGAL_ARGUMENT();
            } else {
                result = parseOrDelimited(s, delim);
            }
        }
    }

    fun hexStrToBytes(chars: array<char>): array<int8> {
        if (chars == null) {
            result = null;
        } else {
            var s: java.lang.CharSequence = action CHARS_TO_STR(chars);
            result = action PARSE_HEX(s);
        }
    }

    fun isHexChar(c: char): bool {
        result = action IS_HEX_CHAR(c);
    }

    // A stream skips complete delimiters and line breaks anywhere, including
    // between nibbles. A final incomplete delimiter or nibble is silently discarded.
    proc streamPrefix(text: string, delim: string): string {
        var n: int32 = action LENGTH(delim);
        var pattern: string = "(?s)^([\\r\\n0-9A-Fa-f]*).*\\z";
        if (n > 0) {
            var quoted: string = action REGEX_QUOTE(delim);
            var head: string = action STRING_CONCAT("(?s)^((?:", quoted);
            pattern = action STRING_CONCAT(head, "|[\\r\\n0-9A-Fa-f])*).*\\z");
        }
        result = action REPLACE_ALL(text, pattern, "$1");
    }

    proc streamBytes(prefix: string, delim: string): array<int8> {
        var quoted: string = action REGEX_QUOTE(delim);
        var plain: string = action REPLACE_ALL(prefix, quoted, "");
        var digits: string = action REPLACE_ALL(plain, "[\\r\\n]", "");
        var pairs: string = action REPLACE_ALL(digits, "(?s)^((?:.{2})*).\\z", "$1");
        var chars: array<char> = action STR_TO_CHARS(pairs);
        var sequence: java.lang.CharSequence = action CHARS_TO_STR(chars);
        result = action PARSE_HEX(sequence);
    }

    // Model for distinct regular input/output files. Reading raw bytes avoids UTF-8
    // failures absent from the source. Opening/closing the output before validation
    // preserves CREATE_NEW/APPEND errors and creation/truncation on failure without
    // leaving live streams after an exception. The final write preserves old tails.
    // Whole-file snapshots still do not model aliased files or mid-read I/O failures.
    fun hexToBytesStreaming(inPath: java.nio.file.Path, outPath: java.nio.file.Path, delim: string, options: array<java.nio.file.OpenOption>) {
        var raw: array<int8> = action READ_FILE_BYTES(inPath);
        var empty: array<int8> = action EMPTY_STRING_BYTES("");
        action WRITE_FILE_BYTES(outPath, empty, options);
        if (delimiterRejected(delim)) {
            action THROW_ILLEGAL_ARGUMENT();
        } else {
            var separator: string = delim;
            if (delim == null) { separator = ""; }
            var names: string = action OPTION_NAMES(options);
            var append: bool = action STRING_MATCHES(names, "(?s).*\\bAPPEND\\b.*");
            var finalOptions: array<java.nio.file.OpenOption> = action WRITE_OPTIONS();
            if (append) { finalOptions = action APPEND_OPTIONS(); }
            var text: string = action BYTES_TEXT(raw, "ISO-8859-1");
            var prefix: string = streamPrefix(text, separator);
            var data: array<int8> = streamBytes(prefix, separator);
            action WRITE_FILE_BYTES(outPath, data, finalOptions);
            var prefixLength: int32 = action LENGTH(prefix);
            var rest: string = action SUBSTRING_FROM(text, prefixLength);
            if (!(action STRING_STARTS_WITH(separator, rest))) {
                // Same error position and partial file; exact exception type is unavailable in JDK.
                action THROW_INVALID_HEX();
            }
        }
    }

    // Original: a loop over the characters. Equivalent here: no character is left once the hex digits are removed.
    fun isHexStr(str: string): bool {
        if (str == null) {
            result = false;
        } else {
            var rest: string = action REPLACE_ALL(str, "[0-9A-Fa-f]", "");
            var left: int32 = action LENGTH(rest);
            result = left == 0;
        }
    }

    // Both digits are checked before either is used, as in the original; every failure is the same
    // IllegalArgumentException (the original only differs in its message).
    fun hexCharToByte(c1: char, c2: char): int8 {
        if (action IS_HEX_CHAR(c1)) {
            if (action IS_HEX_CHAR(c2)) {
                var high: int32 = action HEX_DIGIT_VALUE(c1);
                var low: int32 = action HEX_DIGIT_VALUE(c2);
                result = high * 16 + low;
            } else {
                action THROW_ILLEGAL_ARGUMENT();
            }
        } else {
            action THROW_ILLEGAL_ARGUMENT();
        }
    }

    // Order of events in the original: `sb` must not be null (NullPointerException), then the delimiter check,
    // then a null array leaves the builder untouched; otherwise the hex text is appended and the same builder returned.
    fun bytesToHexStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, delim: string, sb: java.lang.StringBuilder): java.lang.StringBuilder {
        if (sb == null) {
            action THROW_NULL_POINTER();
        } else {
            if (delimiterRejected(delim)) {
                action THROW_ILLEGAL_ARGUMENT();
            } else {
                if (data == null) {
                    result = sb;
                } else {
                    var s: string = hexTextOrDelimited(data, caseType, delim);
                    var chars: array<char> = action STR_TO_CHARS(s);
                    result = action SB_APPEND_CHARS(sb, chars);
                }
            }
        }
    }

    fun bytesToHexStr(data: array<int8>, caseType: net.lbruun.hexutils.Hex.HexCase, sb: java.lang.StringBuilder): java.lang.StringBuilder {
        if (sb == null) {
            action THROW_NULL_POINTER();
        } else {
            if (data == null) {
                result = sb;
            } else {
                var s: string = hexText(data, caseType);
                var chars: array<char> = action STR_TO_CHARS(s);
                result = action SB_APPEND_CHARS(sb, chars);
            }
        }
    }
}

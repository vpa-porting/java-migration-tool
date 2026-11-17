libsl "1.0.0";
library `MiGBase64` version "2.2";

import base64-vocabulary;

type com.migcomponents.migbase64.Base64 {}
automaton com.migcomponents.migbase64.Base64: com.migcomponents.migbase64.Base64 {

    // ---- Encoding ----

    proc selectEncoder(lines: bool): java.util.Base64.Encoder {
        if (lines) {
            result = action MIME_ENCODER();
        } else {
            result = action BASIC_ENCODER();
        }
    }

    proc encodeBytes(bytes: array<int8>, lines: bool): array<int8> {
        var enc: java.util.Base64.Encoder = selectEncoder(lines);
        result = action ENCODE_TO_BYTES(enc, bytes);
    }

    proc encodeText(bytes: array<int8>, lines: bool): string {
        var enc: java.util.Base64.Encoder = selectEncoder(lines);
        result = action ENCODE_TO_STRING(enc, bytes);
    }

    fun encodeToByte(data: array<int8>, lines: bool): array<int8> {
        ensures result != null;
        var bytes: array<int8> = data;
        if (data == null) {
            bytes = action STR_TO_BYTES("");
        }
        result = encodeBytes(bytes, lines);
    }

    // Contract: 0 <= off, off + len <= data.length. Outside it the original fails while reading the
    // slice (ArrayIndexOutOfBoundsException) - it never pads - and a negative `len` falls out of its size
    // arithmetic: ((len - 1) / 3 + 1) * 4 is 4 for len = -1, 0 for -4..-2 and negative below that.
    fun encodeToByte(data: array<int8>, off: int32, len: int32, lines: bool): array<int8> {
        ensures result != null;
        var empty: array<int8> = action STR_TO_BYTES("");
        if (data == null || len == 0) {
            result = encodeBytes(empty, lines);
        } else {
            if (len < 0) {
                if (len == -1) {
                    result = action SLICE(empty, 0, 4);
                } else {
                    if (len > -5) {
                        result = empty;
                    } else {
                        action THROW_NEGATIVE_ARRAY_SIZE();
                    }
                }
            } else {
                var size: int32 = action BYTES_LENGTH(data);
                if (off < 0 || off + len > size) {
                    action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
                } else {
                    var bytes: array<int8> = action SLICE(data, off, off + len);
                    result = encodeBytes(bytes, lines);
                }
            }
        }
    }

    fun encodeToString(data: array<int8>, lines: bool): string {
        ensures result != null;
        var bytes: array<int8> = data;
        if (data == null) {
            bytes = action STR_TO_BYTES("");
        }
        result = encodeText(bytes, lines);
    }

    fun encodeToChar(data: array<int8>, lines: bool): array<char> {
        ensures result != null;
        var bytes: array<int8> = data;
        if (data == null) {
            bytes = action STR_TO_BYTES("");
        }
        var s: string = encodeText(bytes, lines);
        result = action STR_TO_CHARS(s);
    }

    // ---- Decoding ----

    // MiGBase64 reads characters through a 256-entry table, so a char above U+00FF fails with
    // ArrayIndexOutOfBoundsException before anything else happens.
    proc decodeText(s: string): array<int8> {
        var low: string = action REPLACE_ALL(s, "[^\\x00-\\xFF]", "");
        var lowLength: int32 = action LENGTH(low);
        var length: int32 = action LENGTH(s);
        if (lowLength != length) {
            action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
        } else {
            result = decodeChecked(s);
        }
    }

    // `s` holds chars up to U+00FF only (the bytes are read as ISO-8859-1 characters).
    // What decode(...) computes, stated in terms of the JDK decoder:
    //  1. "legal" characters are the base64 alphabet and '='; all others are skipped;
    //  2. if their number n is not a multiple of 4 the result is null (corrupted);
    //  3. '=' is an ordinary digit with value 0 wherever it stands, so the legal characters decode like
    //     the alphabet-only text in which every '=' is replaced by 'A' (the table maps '=' to 0 like 'A');
    //  4. only the first 3n/4 - pad bytes are kept, where pad counts the '=' in the trailing run of
    //     characters whose table value is <= 0 - that is '=', 'A' (value 0) and the skipped ones; index 0
    //     is never part of the run. A negative count is NegativeArraySizeException.
    proc decodeChecked(s: string): array<int8> {
        var legal: string = action REPLACE_ALL(s, "[^A-Za-z0-9+/=]", "");
        var n: int32 = action LENGTH(legal);
        if (n % 4 != 0) {
            result = null;
        } else {
            if (n == 0) {
                result = action STR_TO_BYTES("");
            } else {
                var tail: string = action SUBSTRING_FROM(s, 1);
                var run: string = action REPLACE_ALL(tail, "(?s)^.*[B-Za-z0-9+/]", "");
                var runLength: int32 = action LENGTH(run);
                var runWithoutPad: string = action REPLACE_ALL(run, "=", "");
                var runWithoutPadLength: int32 = action LENGTH(runWithoutPad);
                var kept: int32 = n / 4 * 3 - (runLength - runWithoutPadLength);
                if (kept < 0) {
                    action THROW_NEGATIVE_ARRAY_SIZE();
                } else {
                    var digits: string = action REPLACE_ALL(legal, "=", "A");
                    var dec: java.util.Base64.Decoder = action MIME_DECODER();
                    var all: array<int8> = action DECODE_STRING(dec, digits);
                    result = action SLICE(all, 0, kept);
                }
            }
        }
    }

    // The bytes are read as ISO-8859-1 characters.
    proc decodeBytes(data: array<int8>): array<int8> {
        var s: string = action BYTES_TO_STR(data, "ISO-8859-1");
        result = decodeChecked(s);
    }

    // Under the documented preconditions of decodeFast its result equals the MIME decoder's.
    proc decodeWellFormed(s: string): array<int8> {
        var dec: java.util.Base64.Decoder = action MIME_DECODER();
        result = action DECODE_STRING(dec, s);
    }

    fun decode(data: string): array<int8> {
        if (data == null) {
            result = action STR_TO_BYTES("");
        } else {
            result = decodeText(data);
        }
    }

    // Documented to throw on null; the 2.2 implementation returns an empty array.
    fun decode(data: array<char>): array<int8> {
        if (data == null) {
            result = action STR_TO_BYTES("");
        } else {
            var s: string = action CHARS_TO_STR(data);
            result = decodeText(s);
        }
    }

    // decode(data, 0, data.length): a null array fails on `data.length`.
    fun decode(data: array<int8>): array<int8> {
        if (data == null) {
            action THROW_NULL_POINTER();
        } else {
            result = decodeBytes(data);
        }
    }

    // Contract: 0 <= off, off + len <= data.length. A negative `len` reads nothing: it is "corrupted"
    // (null) unless a multiple of 4, which then fails sizing the result. With len > 0 the slice is read
    // element by element: null fails with NullPointerException, an out-of-range slice with
    // ArrayIndexOutOfBoundsException. len = 0 returns an empty array without touching `data`.
    fun decode(data: array<int8>, off: int32, len: int32): array<int8> {
        if (len < 0) {
            if (len % 4 != 0) {
                result = null;
            } else {
                action THROW_NEGATIVE_ARRAY_SIZE();
            }
        } else {
            if (len == 0) {
                result = action STR_TO_BYTES("");
            } else {
                if (data == null) {
                    action THROW_NULL_POINTER();
                } else {
                    var size: int32 = action BYTES_LENGTH(data);
                    if (off < 0 || off + len > size) {
                        action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
                    } else {
                        var bytes: array<int8> = action SLICE(data, off, off + len);
                        result = decodeBytes(bytes);
                    }
                }
            }
        }
    }



    // A leading '=' whose suffix is all trimmed causes a read of index -1.
    proc fastSinglePad(mask: string): bool {
        var n: int32 = action LENGTH(mask);
        var unmatched: string = action REPLACE_ALL(mask, "^=[^A-Za-z0-9+/=]*$", "");
        var rest: int32 = action LENGTH(unmatched);
        result = n > 0 && rest == 0;
    }

    proc fastBody(s: string): string {
        result = action REPLACE_ALL(s, "^[^A-Za-z0-9+/=]+|[^A-Za-z0-9+/=]+$", "");
    }

    // In a quartet, an invalid table value (-1) sets all bits above its sextet.
    // Replacing its prefix with '/' (63) expresses that signed-OR effect before
    // calling the standard decoder. The suffix length aligns each regex to a quartet.
    proc fastQuartetPrefix(s: string, n: int32, regexStart: string,
                           replacement: string, offset: int32): string {
        var remainder: int32 = (n + offset) % 4;
        var count: string = action INT_STRING(remainder);
        var head: string = action STRING_CONCAT(regexStart, count);
        var regex: string = action STRING_CONCAT(head, "}\\z)");
        result = action REPLACE_ALL(s, regex, replacement);
    }

    proc fastCore(s: string, body: string, invalidLookup: string): array<int8> {
        var originalLength: int32 = action LENGTH(s);
        var n: int32 = action LENGTH(body);
        if (n == 0) {
            if (originalLength > 2) {
                action THROW_NEGATIVE_ARRAY_SIZE();
            } else {
                result = action STR_TO_BYTES("");
            }
        } else {
            var unpadded: string = action REPLACE_ALL(body, "=+$", "");
            var unpaddedLength: int32 = action LENGTH(unpadded);
            var padding: int32 = action INT_MIN(n - unpaddedLength, 2);
            var separators: int32 = 0;
            var noLineMarker: string = action REPLACE_ALL(s, "(?s)^.{76}\\r.*$", "");
            var markerLength: int32 = action LENGTH(noLineMarker);
            if (originalLength > 76 && markerLength == 0) {
                separators = n / 78 * 2;
            }
            var kept: int32 = (n - separators) * 6 / 8 - padding;
            if (kept < 0) {
                action THROW_NEGATIVE_ARRAY_SIZE();
            } else {
                if (kept == 0) {
                    result = action STR_TO_BYTES("");
                } else {
                    var digits: string = body;
                    if (separators > 0) {
                        // Separators are skipped only by full 57-byte blocks, never by
                        // the final partial block. Malformed padding can stop that loop early.
                        var boundary: int32 = action INT_MIN(n, kept / 57 * 78);
                        var prefix: string = action SUBSTRING_RANGE(body, 0, boundary);
                        var compact: string = action REPLACE_ALL(prefix, "(?s)(.{76}).{2}", "$1");
                        var tail: string = action SUBSTRING_FROM(body, boundary);
                        digits = action STRING_CONCAT(compact, tail);
                    }
                    var digitsLength: int32 = action LENGTH(digits);
                    // A partial final block reads every remaining character; a full
                    // final block stops after its last quartet, even if padding is malformed.
                    var partial: int32 = action INT_MIN(kept % 3, 1);
                    var usedLengthLimit: int32 = action INT_MIN(digitsLength, kept / 3 * 4 + partial * digitsLength);
                    var used: string = action SUBSTRING_RANGE(digits, 0, usedLengthLimit);
                    var safe: string = action REPLACE_ALL(used, invalidLookup, "");
                    var usedLength: int32 = action LENGTH(used);
                    var safeLength: int32 = action LENGTH(safe);
                    if (usedLength != safeLength) {
                        action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
                    } else {
                        var normalized: string = action REPLACE_ALL(digits, "=", "A");
                        normalized = fastQuartetPrefix(normalized, digitsLength,
                            "(?s).{3}[^A-Za-z0-9+/](?=(?:.{4})*.{", "////", 0);
                        normalized = fastQuartetPrefix(normalized, digitsLength,
                            "(?s).{2}[^A-Za-z0-9+/](?=(?:.{4})*.{", "///", 1);
                        normalized = fastQuartetPrefix(normalized, digitsLength,
                            "(?s).[^A-Za-z0-9+/](?=(?:.{4})*.{", "//", 2);
                        normalized = fastQuartetPrefix(normalized, digitsLength,
                            "(?s)[^A-Za-z0-9+/](?=(?:.{4})*.{", "/", 3);
                        normalized = action REPLACE_ALL(normalized, "(?s)^((?:.{4})*).\\z", "$1");
                        var dec: java.util.Base64.Decoder = action MIME_DECODER();
                        var all: array<int8> = action DECODE_STRING(dec, normalized);
                        var decoded: array<int8> = action SLICE(all, 0, kept);
                        var tailStart: int32 = kept / 3 * 4;
                        if (kept % 3 != 0 && digitsLength - tailStart - padding > 5) {
                            // Malformed CRLF/padding can leave six symbols in the tail.
                            // Java masks the sixth shift (-12) to 20 bits: its low nibble
                            // must be ORed into the upper nibble of the first tail byte.
                            var sixth: string = action SUBSTRING_RANGE(normalized, tailStart + 5, tailStart + 6);
                            var pair: string = action STRING_CONCAT(sixth, "A");
                            var one: array<int8> = action DECODE_STRING(dec, pair);
                            var oneBuffer: java.nio.ByteBuffer = action WRAP_BYTES(one);
                            var shifted: int8 = action BUFFER_BYTE(oneBuffer, 0);
                            var unsignedShifted: int32 = action UNSIGNED_BYTE(shifted);
                            var extra: int32 = unsignedShifted / 4 % 16 * 16;
                            var output: java.nio.ByteBuffer = action WRAP_BYTES(decoded);
                            var index: int32 = kept / 3 * 3;
                            var first: int8 = action BUFFER_BYTE(output, index);
                            var unsignedFirst: int32 = action UNSIGNED_BYTE(first);
                            var combined: int32 = unsignedFirst | extra;
                            var signed: int32 = (combined ^ 128) - 128;
                            var decimal: string = action INT_STRING(signed);
                            var updated: int8 = action PARSE_SIGNED_BYTE(decimal);
                            var sameBuffer: java.nio.ByteBuffer = action PUT_BUFFER_BYTE(output, index, updated);
                        }
                        result = decoded;
                    }
                }
            }
        }
    }

    fun decodeFast(data: string): array<int8> {
        // String's boundary lookup masks UTF-16 units to 8 bits; decoding does not.
        // writeChars preserves isolated surrogates, unlike String.getBytes(charset).
        var n: int32 = action LENGTH(data);
        var buffer: java.io.ByteArrayOutputStream = action NEW_BYTE_OUTPUT();
        var writer: java.io.DataOutputStream = action NEW_DATA_OUTPUT(buffer);
        action WRITE_CHARS(writer, data);
        var utf16: array<int8> = action OUTPUT_BYTES(buffer);
        var pairs: string = action BYTES_TO_STR(utf16, "ISO-8859-1");
        var mask: string = action REPLACE_ALL(pairs, "(?s).(.)", "$1");
        var firstPad: string = action REPLACE_ALL(data, "(?s)^=.*$", "");
        var firstPadLength: int32 = action LENGTH(firstPad);
        if (n > 0 && firstPadLength == 0 && fastSinglePad(mask)) {
            action THROW_STRING_INDEX_OUT_OF_BOUNDS();
        } else {
            var bodyMask: string = fastBody(mask);
            var bodyLength: int32 = action LENGTH(bodyMask);
            var withoutPrefix: string = action REPLACE_ALL(mask, "^[^A-Za-z0-9+/=]+", "");
            var suffixLength: int32 = action LENGTH(withoutPrefix);
            var start: int32 = n - suffixLength;
            var body: string = action SUBSTRING_RANGE(data, start, start + bodyLength);
            result = fastCore(data, body, "[^\\x00-\\xFF]");
        }
    }

    fun decodeFast(data: array<char>): array<int8> {
        var s: string = action CHARS_TO_STR(data);
        var prefix: string = action REPLACE_ALL(s, "(?s)[A-Za-z0-9+/=].*$", "");
        var suffix: string = action REPLACE_ALL(s, "(?s)^.*[A-Za-z0-9+/=]", "");
        var edges: string = action STRING_CONCAT(prefix, suffix);
        var edgeLength: int32 = action LENGTH(edges);
        var low: string = action REPLACE_ALL(edges, "[^\\x00-\\xFF]", "");
        var lowLength: int32 = action LENGTH(low);
        var n: int32 = action LENGTH(s);
        if (n > 1 && lowLength != edgeLength) {
            action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
        } else {
            if (fastSinglePad(s)) {
                action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
            } else {
                var body: string = fastBody(s);
                result = fastCore(s, body, "[^\\x00-\\xFF]");
            }
        }
    }

    fun decodeFast(data: array<int8>): array<int8> {
        var s: string = action BYTES_TO_STR(data, "ISO-8859-1");
        if (fastSinglePad(s)) {
            action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
        } else {
            var body: string = fastBody(s);
            result = fastCore(s, body, "[^\\x00-\\x7F]");
        }
    }
}

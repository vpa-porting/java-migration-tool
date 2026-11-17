libsl "1.0.0";
library `HexHarmless` version "1.0.0";

import hex-vocabulary;

// Normative contracts and supported subset: ../EXTENSION_PLAN.md.
type net.lbruun.hexutils.HexHarmless {}
automaton net.lbruun.hexutils.HexHarmless: net.lbruun.hexutils.HexHarmless {
    proc mapTo(c: char): char {
        if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f')) {
            if (c == '0') {
                result = 'g';
            } else {
                if (c == '1') {
                    result = 'h';
                } else {
                    if (c == '3') {
                        result = 'k';
                    } else {
                        if (c == 'a') {
                            result = 'm';
                        } else {
                            if (c == 'e') {
                                result = 't';
                            } else {
                                result = c;
                            }
                        }
                    }
                }
            }
        } else {
            action THROW_ILLEGAL_ARGUMENT();
        }
    }

    fun convertToHarmless(c: char): char {
        result = mapTo(c);
    }

    proc mapFrom(c: char): char {
        if (c == '2' || (c >= '4' && c <= '9') || c == 'b' || c == 'c' || c == 'd' || c == 'f' || c == 'g' || c == 'h' || c == 'k' || c == 'm' || c == 't') {
            if (c == 'g') {
                result = '0';
            } else {
                if (c == 'h') {
                    result = '1';
                } else {
                    if (c == 'k') {
                        result = '3';
                    } else {
                        if (c == 'm') {
                            result = 'a';
                        } else {
                            if (c == 't') {
                                result = 'e';
                            } else {
                                result = c;
                            }
                        }
                    }
                }
            }
        } else {
            action THROW_ILLEGAL_ARGUMENT();
        }
    }

    fun convertFromHarmless(c: char): char {
        result = mapFrom(c);
    }

    proc harmless(s: string): string {
        var s0: string = action REPLACE_CHAR(s, '0', 'g');
        var s1: string = action REPLACE_CHAR(s0, '1', 'h');
        var s2: string = action REPLACE_CHAR(s1, '3', 'k');
        var s3: string = action REPLACE_CHAR(s2, 'a', 'm');
        var s4: string = action REPLACE_CHAR(s3, 'e', 't');
        result = s4;
    }

    fun byteToHexHarmless(b: int8): array<char> {
        var hex: string = action HEX_BYTE_LOWER(b);
        var text: string = harmless(hex);
        result = action STR_TO_CHARS(text);
    }

    fun bytesToHexHarmless(bytes: array<int8>): array<char> {
        if (bytes == null) {
            result = null;
        } else {
            var hex: string = action HEX_STR_LOWER(bytes);
            var text: string = harmless(hex);
            result = action STR_TO_CHARS(text);
        }
    }

    fun bytesToHexStrHarmless(bytes: array<int8>): string {
        if (bytes == null) {
            action THROW_NULL_POINTER();
        } else {
            var hex: string = action HEX_STR_LOWER(bytes);
            var text: string = harmless(hex);
            result = text;
        }
    }

    fun hexCharHarmlessToByte(a: char, b: char): int8 {
        var ca: char = mapFrom(a);
        var cb: char = mapFrom(b);
        var high: int32 = action HEX_DIGIT_VALUE(ca);
        var low: int32 = action HEX_DIGIT_VALUE(cb);
        result = high * 16 + low;
    }
}

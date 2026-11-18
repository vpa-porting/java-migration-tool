libsl "1.0.0";
library `HarmlessEffects` version "1.0.0";
import hex-vocabulary;
type net.lbruun.hexutils.HexHarmless {}
automaton net.lbruun.hexutils.HexHarmless: net.lbruun.hexutils.HexHarmless {
    fun convertToHarmless(data: array<char>): array<char> {
        result = action MAP_ALPHABET_IN_PLACE(data, "0123456789abcdef", "gh2k456789mbcdtf");
    }
    fun convertFromHarmless(data: array<char>): array<char> {
        result = action MAP_ALPHABET_IN_PLACE(data, "gh2k456789mbcdtf", "0123456789abcdef");
    }
    fun hexStrHarmlessToBytes(data: array<char>): array<int8> {
        if (data == null) { result = null; } else {
            var mapped: array<char> = action MAP_ALPHABET_IN_PLACE(data, "gh2k456789mbcdtf", "0123456789abcdef");
            var text: java.lang.CharSequence = action CHARS_TO_STR(mapped);
            result = action PARSE_HEX(text);
        }
    }
    fun hexStrHarmlessToBytes(data: java.lang.CharSequence): array<int8> {
        if (data == null) { result = null; } else {
            var mapped: array<char> = action MAP_ALPHABET_SEQUENCE(data, "gh2k456789mbcdtf", "0123456789abcdef");
            var text: java.lang.CharSequence = action CHARS_TO_STR(mapped);
            result = action PARSE_HEX(text);
        }
    }
}

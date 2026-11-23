libsl "1.0.0";
library `HexVocabulary` version "1";

// Semantic vocabulary shared by the hexutils and java.util.HexFormat specifications. Both libraries
// are described as traces over these actions; a call is migrated when the traces have equal effects.

type java.lang.CharSequence {}
type java.nio.file.Path {}
type java.lang.StringBuilder {}
type java.nio.file.OpenOption {}

// Two lowercase / uppercase hex digits of one byte.
define action HEX_BYTE_UPPER(b: int8): string;
define action HEX_BYTE_LOWER(b: int8): string;
// All bytes as hex digits, no separators / `delim` between the bytes (not after the last one).
define action HEX_STR_UPPER(data: array<int8>): string;
define action HEX_STR_LOWER(data: array<int8>): string;
define action HEX_STR_DELIM_UPPER(data: array<int8>, delim: string): string;
define action HEX_STR_DELIM_LOWER(data: array<int8>, delim: string): string;
define action STR_TO_CHARS(s: string): array<char>;
define action CHARS_TO_STR(chars: array<char>): java.lang.CharSequence;
// Hex text (optionally with `delim` between bytes) to bytes.
define action PARSE_HEX(s: java.lang.CharSequence): array<int8>;
define action PARSE_HEX_DELIM(s: java.lang.CharSequence, delim: string): array<int8>;
define action IS_HEX_CHAR(c: char): bool;
// Value 0..15 of one hex digit.
define action HEX_DIGIT_VALUE(c: char): int32;

// Replaces every match of the regular expression.
define action REPLACE_ALL(s: string, regex: string, replacement: string): string;
// Replace every occurrence of one UTF-16 code unit, preserving all others.
define action REPLACE_CHAR(s: string, oldChar: char, newChar: char): string;
define action LENGTH(s: string): int32;

// Exceptional outcome: "the call ends by throwing exactly this JDK exception". The target
// specification realizes it with @Throws, so the migrated code throws it too.
annotation Terminal();
@Terminal
define action THROW_ILLEGAL_ARGUMENT();
@Terminal
define action THROW_NULL_POINTER();
// Appends the characters to the builder (which is modified) and answers the same builder.
define action SB_APPEND_CHARS(sb: java.lang.StringBuilder, chars: array<char>): java.lang.StringBuilder;

// File effects. READ_FILE_TEXT yields the file's content as text; WRITE_FILE_BYTES replaces the
// content of `p` (create / truncate unless `options` say otherwise) with `data`.
define action READ_FILE_TEXT(p: java.nio.file.Path): string;
define action WRITE_FILE_BYTES(p: java.nio.file.Path, data: array<int8>, options: array<java.nio.file.OpenOption>);

// Semantic loop contracts: map each UTF-16 unit in order through corresponding
// positions of two equal-sized distinct alphabets. Invalid input throws IAE;
// the in-place version preserves array identity and any already mapped prefix.
define action MAP_ALPHABET_IN_PLACE(data: array<char>, from: string, to: string): array<char>;
// Snapshot by repeated length()/charAt(i), without mutating the CharSequence.
define action MAP_ALPHABET_SEQUENCE(data: java.lang.CharSequence, from: string, to: string): array<char>;

// Standard operations for the source parser's delimiter/length behavior.
define action SEQUENCE_TEXT(s: java.lang.CharSequence): string;
define action REGEX_QUOTE(s: string): string;
define action BYTE_ARRAY_LENGTH(data: array<int8>): int32;
define action COPY_BYTES_RANGE(data: array<int8>, from: int32, to: int32): array<int8>;
@Terminal
define action THROW_STRING_INDEX_OUT_OF_BOUNDS();
@Terminal
define action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();

// Standard JDK operations for delimiter grammars and ordered file effects.
define action STRING_CONCAT(s: string, other: string): string;
define action SUBSTRING_FROM(s: string, from: int32): string;
define action STRING_STARTS_WITH(s: string, prefix: string): bool;
define action STRING_MATCHES(s: string, regex: string): bool;
define action EMPTY_STRING_BYTES(s: string): array<int8>;
define action READ_FILE_BYTES(p: java.nio.file.Path): array<int8>;
define action BYTES_TEXT(data: array<int8>, charset: string): string;
define action OPTION_NAMES(options: array<java.nio.file.OpenOption>): string;
define action WRITE_OPTIONS(): array<java.nio.file.OpenOption>;
define action APPEND_OPTIONS(): array<java.nio.file.OpenOption>;
// Abstract terminal rejection of invalid hex. The concrete exception class is
// deliberately outside this common action: source HexConversionException versus
// target NumberFormatException. Differential tests still compare the classes exactly.
@Terminal
define action THROW_INVALID_HEX();

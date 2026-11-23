libsl "1.0.0";
library `Base64Vocabulary` version "1";

// Semantic vocabulary shared by the MiGBase64 and java.util.Base64 specifications. Both libraries
// are described as traces over these actions; a call is migrated when the traces have equal effects.

type java.util.Base64.Encoder {}
type java.util.Base64.Decoder {}

// RFC 4648 section 4 encoder, no line separators.
define action BASIC_ENCODER(): java.util.Base64.Encoder;
// RFC 2045 encoder: CRLF after every 76 characters, no separator at the end.
define action MIME_ENCODER(): java.util.Base64.Encoder;
// RFC 2045 decoder: characters outside the base64 alphabet are skipped.
define action MIME_DECODER(): java.util.Base64.Decoder;

define action ENCODE_TO_BYTES(enc: java.util.Base64.Encoder, data: array<int8>): array<int8>;
define action ENCODE_TO_STRING(enc: java.util.Base64.Encoder, data: array<int8>): string;
define action DECODE_STRING(dec: java.util.Base64.Decoder, s: string): array<int8>;
define action DECODE_BYTES(dec: java.util.Base64.Decoder, data: array<int8>): array<int8>;

// data[from, to). Reading past the end yields zero bytes (it does not fail); a negative `from` or a
// `from` beyond the end fails with ArrayIndexOutOfBoundsException, `from` > `to` with IllegalArgumentException.
define action SLICE(data: array<int8>, from: int32, to: int32): array<int8>;
define action STR_TO_BYTES(s: string): array<int8>;
define action STR_TO_CHARS(s: string): array<char>;
define action CHARS_TO_STR(chars: array<char>): string;
define action BYTES_TO_STR(data: array<int8>, charset: string): string;

// Replaces every match of the regular expression.
define action REPLACE_ALL(s: string, regex: string, replacement: string): string;
define action LENGTH(s: string): int32;
define action BYTES_LENGTH(data: array<int8>): int32;
// s.substring(from); `from` must not exceed the length.
define action SUBSTRING_FROM(s: string, from: int32): string;

// Exceptional outcomes. Each stands for "the call ends by throwing exactly this JDK exception":
// the target specification realizes them with @Throws, so the migrated code throws it too.
annotation Terminal();
@Terminal
define action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
@Terminal
define action THROW_NEGATIVE_ARRAY_SIZE();
@Terminal
define action THROW_NULL_POINTER();

// UTF-16 substring with the same bounds and exceptional behavior as String.substring.
define action SUBSTRING_RANGE(s: string, from: int32, to: int32): string;
@Terminal
define action THROW_STRING_INDEX_OUT_OF_BOUNDS();

// Standard String/Integer operations used to state the fast decoder's input normalization.
define action STRING_CONCAT(s: string, other: string): string;
define action INT_STRING(value: int32): string;

define action INT_MIN(a: int32, b: int32): int32;

// DataOutputStream.writeChars exposes raw UTF-16 units, including isolated surrogates.
type java.io.ByteArrayOutputStream {}
type java.io.DataOutputStream {}
define action NEW_BYTE_OUTPUT(): java.io.ByteArrayOutputStream;
define action NEW_DATA_OUTPUT(output: java.io.ByteArrayOutputStream): java.io.DataOutputStream;
define action WRITE_CHARS(output: java.io.DataOutputStream, s: string);
define action OUTPUT_BYTES(output: java.io.ByteArrayOutputStream): array<int8>;

// Standard byte-buffer operations preserve the backing array and update one byte.
type java.nio.ByteBuffer {}
define action WRAP_BYTES(data: array<int8>): java.nio.ByteBuffer;
define action BUFFER_BYTE(buffer: java.nio.ByteBuffer, index: int32): int8;
define action PUT_BUFFER_BYTE(buffer: java.nio.ByteBuffer, index: int32, value: int8): java.nio.ByteBuffer;
define action UNSIGNED_BYTE(value: int8): int32;
define action PARSE_SIGNED_BYTE(s: string): int8;

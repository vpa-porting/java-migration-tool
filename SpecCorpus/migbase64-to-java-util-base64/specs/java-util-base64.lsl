libsl "1.0.0";
library `JavaUtilBase64` version "21";

import base64-vocabulary;

annotation JavaConstructor(javaType: string);
annotation Throws(exception: string);

type java.util.Base64 {}
automaton java.util.Base64: java.util.Base64 {
    fun getEncoder(): java.util.Base64.Encoder {
        result = action BASIC_ENCODER();
    }
    fun getMimeEncoder(): java.util.Base64.Encoder {
        result = action MIME_ENCODER();
    }
    fun getMimeDecoder(): java.util.Base64.Decoder {
        result = action MIME_DECODER();
    }
}

automaton java.util.Base64.Encoder: java.util.Base64.Encoder {
    fun encodeToString(receiver: java.util.Base64.Encoder, data: array<int8>): string {
        result = action ENCODE_TO_STRING(receiver, data);
    }
    fun encode(receiver: java.util.Base64.Encoder, data: array<int8>): array<int8> {
        result = action ENCODE_TO_BYTES(receiver, data);
    }
}

automaton java.util.Base64.Decoder: java.util.Base64.Decoder {
    fun decode(receiver: java.util.Base64.Decoder, s: string): array<int8> {
        result = action DECODE_STRING(receiver, s);
    }
    fun decode(receiver: java.util.Base64.Decoder, data: array<int8>): array<int8> {
        result = action DECODE_BYTES(receiver, data);
    }
}

type java.util.Arrays {}
automaton java.util.Arrays: java.util.Arrays {
    fun copyOfRange(data: array<int8>, from: int32, to: int32): array<int8> {
        result = action SLICE(data, from, to);
    }
}

type java.lang.String {}
automaton java.lang.String: java.lang.String {
    fun valueOf(chars: array<char>): string {
        result = action CHARS_TO_STR(chars);
    }
    fun toCharArray(receiver: string): array<char> {
        result = action STR_TO_CHARS(receiver);
    }
    fun getBytes(receiver: string): array<int8> {
        result = action STR_TO_BYTES(receiver);
    }
    fun concat(receiver: string, other: string): string {
        result = action STRING_CONCAT(receiver, other);
    }
    fun replaceAll(receiver: string, regex: string, replacement: string): string {
        result = action REPLACE_ALL(receiver, regex, replacement);
    }
    fun length(receiver: string): int32 {
        result = action LENGTH(receiver);
    }
    fun substring(receiver: string, from: int32): string {
        result = action SUBSTRING_FROM(receiver, from);
    }
    fun substring(receiver: string, from: int32, to: int32): string {
        result = action SUBSTRING_RANGE(receiver, from, to);
    }
}

type java.lang.reflect.Array {}
automaton java.lang.reflect.Array: java.lang.reflect.Array {
    fun getLength(array: array<int8>): int32 {
        result = action BYTES_LENGTH(array);
    }
}

type java.lang.ArrayIndexOutOfBoundsException {}
@Throws(exception = "java.lang.ArrayIndexOutOfBoundsException")
automaton java.lang.ArrayIndexOutOfBoundsException: java.lang.ArrayIndexOutOfBoundsException {
    fun raise() {
        action THROW_ARRAY_INDEX_OUT_OF_BOUNDS();
    }
}

type java.lang.NegativeArraySizeException {}
@Throws(exception = "java.lang.NegativeArraySizeException")
automaton java.lang.NegativeArraySizeException: java.lang.NegativeArraySizeException {
    fun raise() {
        action THROW_NEGATIVE_ARRAY_SIZE();
    }
}

type java.lang.NullPointerException {}
@Throws(exception = "java.lang.NullPointerException")
automaton java.lang.NullPointerException: java.lang.NullPointerException {
    fun raise() {
        action THROW_NULL_POINTER();
    }
}

@JavaConstructor(javaType = "java.lang.String")
automaton java.lang.String.Decoding: java.lang.String {
    fun fromBytes(data: array<int8>, charset: string): string {
        result = action BYTES_TO_STR(data, charset);
    }
}


type java.lang.StringIndexOutOfBoundsException {}
@Throws(exception = "java.lang.StringIndexOutOfBoundsException")
automaton java.lang.StringIndexOutOfBoundsException: java.lang.StringIndexOutOfBoundsException {
    fun raise() {
        action THROW_STRING_INDEX_OUT_OF_BOUNDS();
    }
}


type java.lang.Integer {}
automaton java.lang.Integer: java.lang.Integer {
    fun toString(value: int32): string {
        result = action INT_STRING(value);
    }
}


type java.lang.Math {}
automaton java.lang.Math: java.lang.Math {
    fun min(a: int32, b: int32): int32 {
        result = action INT_MIN(a, b);
    }
}


@JavaConstructor(javaType = "java.io.ByteArrayOutputStream")
automaton java.io.ByteArrayOutputStream.Ctor: java.io.ByteArrayOutputStream {
    fun create(): java.io.ByteArrayOutputStream {
        result = action NEW_BYTE_OUTPUT();
    }
}

@JavaConstructor(javaType = "java.io.DataOutputStream")
automaton java.io.DataOutputStream.Ctor: java.io.DataOutputStream {
    fun create(output: java.io.ByteArrayOutputStream): java.io.DataOutputStream {
        result = action NEW_DATA_OUTPUT(output);
    }
}

automaton java.io.DataOutputStream: java.io.DataOutputStream {
    fun writeChars(receiver: java.io.DataOutputStream, s: string) {
        action WRITE_CHARS(receiver, s);
    }
}

automaton java.io.ByteArrayOutputStream: java.io.ByteArrayOutputStream {
    fun toByteArray(receiver: java.io.ByteArrayOutputStream): array<int8> {
        result = action OUTPUT_BYTES(receiver);
    }
}


automaton java.nio.ByteBuffer: java.nio.ByteBuffer {
    fun wrap(data: array<int8>): java.nio.ByteBuffer {
        result = action WRAP_BYTES(data);
    }
    fun get(receiver: java.nio.ByteBuffer, index: int32): int8 {
        result = action BUFFER_BYTE(receiver, index);
    }
    fun put(receiver: java.nio.ByteBuffer, index: int32, value: int8): java.nio.ByteBuffer {
        result = action PUT_BUFFER_BYTE(receiver, index, value);
    }
}

type java.lang.Byte {}
automaton java.lang.Byte: java.lang.Byte {
    fun toUnsignedInt(value: int8): int32 {
        result = action UNSIGNED_BYTE(value);
    }
    fun parseByte(s: string): int8 {
        result = action PARSE_SIGNED_BYTE(s);
    }
}

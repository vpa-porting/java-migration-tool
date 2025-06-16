libsl "1.0.0";
library `FileLib2`
    version "1.0.0";

import java-17;

typealias byte = int8;
typealias int = int32;

define action OPEN_FILE(path: string);
define action CLOSE_FILE(path: string);

define action CREATE_FILE(path: string);
define action CREATE_FOLDER(path: string);

define action SAVE_FILE(source: array<byte>, path: string, encoding: string);
define action READ_FILE(path: string): array<byte>;

define action EXISTS(path: string): bool;

define action IS_FILE(path: string): bool;
define action IS_FOLDER(path: string): bool;

define action IO_EXCEPTION(msg: string);

type org.file.lib2.NIOFiles {

}

automaton org.file.lib2.NIOFiles: org.file.lib2.NIOFiles {

    fun read(filepath: string, offset: int, length: int): array<byte> {
        var source: array<byte>;
        action OPEN_FILE(filepath);
        source = action READ_FILE(filepath);
        action CLOSE_FILE(filepath);
        result = source;
    }

    fun write(encoding: string, text: array<byte>, filepath: string) {
        action OPEN_FILE(filepath);
        action SAVE_FILE(text, filepath, encoding);
        action CLOSE_FILE(filepath);
    }

    fun isFile(path: string): bool {
        result = action IS_FILE(path);
    }

    fun isFolder(path: string): bool {
        result = action IS_FOLDER(path);
    }

    fun exists(path: string): bool {
        result = action EXISTS(path);
    }

    fun notExists(path: string): bool {
        result = !(action EXISTS(path));
    }

    fun error(msg: string) {
        action IO_EXCEPTION(msg);
    }

    fun createFile(path: string) {
        action CREATE_FILE(path);
    }
}
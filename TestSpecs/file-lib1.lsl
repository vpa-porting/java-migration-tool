libsl "1.0.0";
library `FileLib1`
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

type org.file.lib1.IOFiles {

}

automaton org.file.lib1.IOFiles: org.file.lib1.IOFiles {

    proc validateFile(path: string): bool {
        result = action EXISTS(path) && action IS_FILE(path);
    }

    proc validateFolder(path: string): bool {
        result = action EXISTS(path) && action IS_FOLDER(path);
    }

    proc read(filepath: string): array<byte> {
        var source: array<byte>;
        action OPEN_FILE(filepath);
        source = action READ_FILE(filepath);
        action CLOSE_FILE(filepath);
        result = source;
    }

    proc write(filepath: string, text: array<byte>) {
        action OPEN_FILE(filepath);
        action SAVE_FILE(text, filepath, "UTF-8");
        action CLOSE_FILE(filepath);
    }

    fun compareFiles(fromFile: string, toFile: string): bool {
        var isLeftFile: bool = validateFile(fromFile);
        var isRightFile: bool = validateFile(toFile);
        if (!isLeftFile || !isRightFile) {
            action IO_EXCEPTION("Both paths should exist");
            result = false;
        } else {
            var source1: array<byte> = read(fromFile);
            var source2: array<byte> = read(toFile);
            result = source1 == source2;
        }
    }

    fun copyFileAt(fromPath: string, toPath: string): bool {
        if (!validateFile(fromPath)) {
            action IO_EXCEPTION("Not a file");
            result = false;
        } else {
            var source: array<byte> = read(fromPath);
            if(!(action EXISTS(toPath))) action CREATE_FILE(toPath);
            write(toPath, source);
            result = true;
        }
    }
}
libsl "1.0.0";
library `JavaStdFiles`
    version "1.0.0";

import java-17;

define action FILE_NOT_FOUND_EXCEPTION(msg: string);
define action NULL_POINTER_EXCEPTION(msg: string);
define action ILLEGAL_ARGUMENT_EXCEPTION(msg: string);
define action IO_EXCEPTION(msg: string);

define action EXISTS_FILE(file: java.io.File): bool;
define action IS_DIRECTORY_FILE(file: java.io.File): bool;
define action MKDIRS(directory: java.io.File): bool;
define action GET_CANONICAL_PATH(file: java.io.File): string;
define action CAN_WRITE(file: java.io.File): bool;

define action STRING_EQUALS(str1: string, str2: string): bool;
define action IS_NULL(file: java.io.File): bool;

define action COPY_REC(src: java.io.File, dest: java.io.File);

type java.io.File {

}

type std.file.StdFileLib {

}

automaton std.file.StdFileLib:std.file.StdFileLib {

    fun requireNotNull(file: java.io.File, msg: string): bool {
        var isNull: bool = action IS_NULL(file);
        if (isNull) {
            action NULL_POINTER_EXCEPTION(msg);
        }
        result = !isNull;
    }

    fun fileNotFoundException(msg: string) {
        action FILE_NOT_FOUND_EXCEPTION(msg);
    }

    fun nullPointerException(msg: string) {
        action NULL_POINTER_EXCEPTION(msg);
    }

    fun illegalArgumentException(msg: string) {
        action ILLEGAL_ARGUMENT_EXCEPTION(msg);
    }

    fun ioException(msg: string) {
        action IO_EXCEPTION(msg);
    }

    fun exist(file: java.io.File): bool {
        result = action EXISTS_FILE(file);
    }

    fun isDirectory(file: java.io.File): bool {
        result = action IS_DIRECTORY_FILE(file);
    }

    fun mkdirs(directory: java.io.File): bool {
        result = action MKDIRS(directory);
    }

    fun getCanonicalPath(file: java.io.File): string {
        result = action GET_CANONICAL_PATH(file);
    }

    fun canWrite(file: java.io.File): bool {
        result = action CAN_WRITE(file);
    }

    fun pathEquals(str1: string, str2: string): bool {
        result = action STRING_EQUALS(str1, str2);
    }

    fun copyFilesRec(src: java.io.File, dest: java.io.File) {
        action COPY_REC(src, dest);
    }
}

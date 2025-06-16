libsl "1.0.0";
library `Apache Commons IO`
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

type org.apache.commons.io.FileUtils {

}

automaton org.apache.commons.io.FileUtils: org.apache.commons.io.FileUtils {

proc requireExistsChecked(file: java.io.File, fileParamName: string): bool {
  if (action IS_NULL(file)) {
    action NULL_POINTER_EXCEPTION(fileParamName);
    result = false;
  } else if (!(action EXISTS_FILE(file))) {
    action FILE_NOT_FOUND_EXCEPTION("File system element for parameter does not exist");
    result = false;
  } else {
    result = true;
  }
}

proc requireFileCopy(source: java.io.File, destination: java.io.File): bool {
  if (!(requireExistsChecked(source, "source"))) {
    result = false;
  } else if (action IS_NULL(destination)) {
    action NULL_POINTER_EXCEPTION("destination");
    result = false;
  } else {
    result = true;
  }
}

proc requireDirectory(directory: java.io.File, name: string): bool {
  if (action IS_NULL(directory)) {
    action NULL_POINTER_EXCEPTION(name);
    result = false;
  } else if (!(action IS_DIRECTORY_FILE(directory))) {
    action ILLEGAL_ARGUMENT_EXCEPTION("Parameter is not a directory");
    result = false;
  } else {
    result = true;
  }
}

proc requireDirectoryIfExists(directory: java.io.File, name: string): bool {
  if (action IS_NULL(directory)) {
    action NULL_POINTER_EXCEPTION(name);
    result = false;
  } else if (action EXISTS_FILE(directory)) {
    result = requireDirectory(directory, name);
  } else {
    result = true;
  }
}

proc requireCanonicalPathsNotEquals(srcDir: java.io.File, destDir: java.io.File): bool {
  var canonicalPath: string = action GET_CANONICAL_PATH(srcDir);
  if (action STRING_EQUALS(canonicalPath, action GET_CANONICAL_PATH(destDir))) {
    action ILLEGAL_ARGUMENT_EXCEPTION("File canonical paths are equal");
    result = false;
  } else {
    result = true;
  }
}

proc requireCanWrite(file: java.io.File, name: string): bool {
  if (action IS_NULL(file)) {
    action NULL_POINTER_EXCEPTION(name);
    result = false;
  } else if (!(action CAN_WRITE(file))) {
    action ILLEGAL_ARGUMENT_EXCEPTION("File parameter is not writable");
    result = false;
  } else {
    result = true;
  }
}

proc procCopyDirectory(srcDir: java.io.File, destDir: java.io.File): bool {
  if (!requireFileCopy(srcDir, destDir)) {
    result = false;
  } else if (!requireDirectory(srcDir, "srcDir")) {
    result = false;
  } else if (!requireCanonicalPathsNotEquals(srcDir, destDir)) {
    result = false;
  } else {
    result = doCopyDirectory(srcDir, destDir);
  }
}

proc mkdirs(directory: java.io.File): bool {
  if (directory != null && !(action MKDIRS(directory)) && !(action IS_DIRECTORY_FILE(directory))) {
    action IO_EXCEPTION("Cannot create directory");
    result = false;
  } else {
    result = true;
  }
}

proc doCopyDirectory(srcDir: java.io.File, destDir: java.io.File): bool {
  if (!requireDirectoryIfExists(srcDir, "srcDir")) {
    result = false;
  } else if (!mkdirs(destDir)) {
    result = false;
  } else if (!requireCanWrite(destDir, "destDir")) {
    result = false;
  } else {
    action COPY_REC(srcDir, destDir);
    result = true;
  }
}

fun copyDirectory(srcDir: java.io.File, destDir: java.io.File) {
  procCopyDirectory(srcDir, destDir);
}
}

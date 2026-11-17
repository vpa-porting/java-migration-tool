package org.test.lib;

import static org.file.lib1.IOFiles.*;
import static org.file.lib2.NIOFiles.*;

public class Main {

    public static void main(String[] args) throws Exception {
        var src = "src/main/resources/file.txt";
        var dst = "src/main/resources/copied.txt";
        copyAndCompare(src, dst);
    }

    public static boolean copyAndCompare(String src, String dst) throws Exception {
        generated_copyFileAt(src, dst);
        boolean equals = generated_compareFiles(src, dst);
        System.out.println(equals);
        return equals;
    }

    public static boolean generated_copyFileAt(String fromPath, String toPath) throws Exception {
        boolean result0 = org.file.lib2.NIOFiles.exists(fromPath);
        boolean result1 = org.file.lib2.NIOFiles.isFile(fromPath);
        if (!(result0 && result1)) {
            org.file.lib2.NIOFiles.error("Not a file");
            return false;
        } else {
            byte[] result2 = org.file.lib2.NIOFiles.read(fromPath, 0, 0);
            boolean result3 = org.file.lib2.NIOFiles.notExists(toPath);
            if (!!result3) {
                org.file.lib2.NIOFiles.createFile(toPath);
                org.file.lib2.NIOFiles.write("UTF-8", result2, toPath);
                return true;
            } else {
                org.file.lib2.NIOFiles.write("UTF-8", result2, toPath);
                return true;
            }
        }
    }

    public static boolean generated_compareFiles(String fromFile, String toFile) throws Exception {
        boolean result0 = org.file.lib2.NIOFiles.notExists(fromFile);
        boolean result1 = org.file.lib2.NIOFiles.isFile(fromFile);
        boolean result2 = org.file.lib2.NIOFiles.notExists(toFile);
        boolean result3 = org.file.lib2.NIOFiles.isFile(toFile);
        if ((!(!result0 && result1) || !(!result2 && result3))) {
            org.file.lib2.NIOFiles.error("Both paths should exist");
            return false;
        } else {
            byte[] result4 = org.file.lib2.NIOFiles.read(fromFile, 0, 0);
            byte[] result5 = org.file.lib2.NIOFiles.read(toFile, 0, 0);
            return (result4 == result5);
        }
    }
}

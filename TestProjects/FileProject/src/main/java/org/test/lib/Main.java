package org.test.lib;

import static org.file.lib1.IOFiles.*;

public class Main {

  public static void main(String[] args) throws Exception {
    var src = "src/main/resources/file.txt";
    var dst = "src/main/resources/copied.txt";
    copyAndCompare(src, dst);
  }

  public static boolean copyAndCompare(String src, String dst) throws Exception {
    copyFileAt(src, dst);
    boolean equals = compareFiles(src, dst);
    System.out.println(equals);
    return equals;
  }
}
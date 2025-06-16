package org.file.lib1;

import java.io.*;
import java.util.Arrays;

public class IOFiles {

  private static boolean validateFile(String path) {
    var file = new File(path);
    return file.exists() && file.isFile();
  }

  private static byte[] read(String path) throws IOException {
    try (RandomAccessFile f = new RandomAccessFile(path, "r")) {
      byte[] bytes = new byte[(int) f.length()];
      f.readFully(bytes);
      return bytes;
    }
  }

  private static void write(String path, byte[] text) throws IOException {
    try (OutputStreamWriter writer = new OutputStreamWriter(
        new FileOutputStream(path), "UTF-8")
    ) {
      writer.write(new String(text));
    }
  }

  public static boolean compareFiles(String fromFile, String toFile) throws IOException {
    var isLeftFile = validateFile(fromFile);
    var isRightFile = validateFile(toFile);
    if (!isLeftFile || !isRightFile) {
//      throw new IOException("Both paths should exist");
      System.err.println("Both paths should exist");
      return false;
    } else {
      byte[] source1 = read(fromFile);
      byte[] source2 = read(fromFile);
      return Arrays.equals(source1, source2);
    }
  }

  public static boolean copyFileAt(String fromPath, String toPath) throws IOException {
    if (!validateFile(fromPath)) {
//      throw new IOException("Not a file");
      System.err.println("Not a file");
      return false;
    } else {
      byte[] source = read(fromPath);
      if (!(new File(toPath).exists())) new File(toPath).createNewFile();
      write(toPath, source);
      return true;
    }
  }
}

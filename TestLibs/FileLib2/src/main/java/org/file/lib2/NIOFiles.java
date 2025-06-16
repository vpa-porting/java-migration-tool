package org.file.lib2;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;

public class NIOFiles {

  public static byte[] read(String path, int offset, int length) throws IOException {
    return Files.readAllBytes(Path.of(path));
  }

  public static void write(String encoding, byte[] text, String path) throws IOException {
    try (var out = Files.newOutputStream(Path.of(path));
         var writer = new OutputStreamWriter(out, Charset.forName(encoding).newEncoder())) {
      writer.write(new String(text));
    }
  }

  public static boolean isFile(String path) {
    return Files.isRegularFile(Path.of(path));
  }

  public static boolean exists(String path) {
    return Files.exists(Path.of(path));
  }

  public static boolean notExists(String path) {
    return Files.notExists(Path.of(path));
  }

  public static void error(String msg) throws IOException {
    throw new IOException(msg);
  }

  public static void createFile(String path) throws IOException {
    Files.createFile(Path.of(path));
  }
}

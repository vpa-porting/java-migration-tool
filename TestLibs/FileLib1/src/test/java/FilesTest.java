import org.file.lib1.IOFiles;
import org.junit.Test;

import java.io.IOException;

public class FilesTest {

  @Test
  public void testCmpFiles1() throws IOException {
    var fromPath = "src/test/resources/lorem1.txt";
    var toPath = "src/test/resources/lorem2.txt";
    System.out.println(IOFiles.compareFiles(fromPath, toPath));
  }

  @Test
  public void testCmpFiles2() throws IOException {
    var fromPath = "src/test/resources/lorem1.txt";
    var toPath = "src/test/resources/lorem3.txt";
    System.out.println(IOFiles.compareFiles(fromPath, toPath));
  }

  @Test
  public void testCopyFileAt() throws IOException {
    var fromPath = "src/test/resources/lorem1.txt";
    var toPath = "src/test/resources/lorem1.txt - copy";
    System.out.println(IOFiles.copyFileAt(fromPath, toPath));
  }

}

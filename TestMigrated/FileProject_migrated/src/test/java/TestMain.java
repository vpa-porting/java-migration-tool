import org.junit.Assert;
import org.junit.Test;
import static org.test.lib.Main.copyAndCompare;

public class TestMain {

    @Test
    public void testOk() throws Exception {
        var src = "src/main/resources/file.txt";
        var dst = "src/main/resources/copied.txt";
        boolean result = copyAndCompare(src, dst);
        Assert.assertTrue(result);
    }

    @Test
    public void testFail() throws Exception {
        var src = "src/main/resources/notExist.txt";
        var dst = "src/main/resources/copied.txt";
        boolean result = copyAndCompare(src, dst);
        Assert.assertFalse(result);
    }
}

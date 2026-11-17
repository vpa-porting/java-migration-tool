import com.migcomponents.migbase64.Base64IO;
import java.io.InputStream;
import java.io.OutputStream;
public class Api {
    public static void encode(InputStream input, OutputStream output, boolean lines) throws Exception {
        Base64IO.encode(input, output, lines);
    }
}

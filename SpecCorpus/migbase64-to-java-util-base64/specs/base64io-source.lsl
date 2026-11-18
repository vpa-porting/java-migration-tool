libsl "1.0.0";
library `MiGBase64IO` version "2.2";
import base64io-vocabulary;
type com.migcomponents.migbase64.Base64IO {}
automaton com.migcomponents.migbase64.Base64IO: com.migcomponents.migbase64.Base64IO {
    fun encode(input: java.io.InputStream, output: java.io.OutputStream, lines: bool) {
        action FOLD_BASE64_WINDOWS(input, output, lines, 98304, 19);
    }
}

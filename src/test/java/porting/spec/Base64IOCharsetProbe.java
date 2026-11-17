package porting.spec;

import java.nio.charset.Charset;
import java.util.Arrays;

/** Small standalone probe because the default charset is cached per JVM. */
public final class Base64IOCharsetProbe {
    public static void main(String[] args) throws Exception {
        if (!Charset.defaultCharset().equals(Charset.forName(args[0])))
            throw new AssertionError("Unexpected default charset: " + Charset.defaultCharset());
        for (int size : new int[]{0, 1, 2, 3, 57, 58, 59, 60, 98305}) {
            byte[] data = new byte[size];
            for (int i = 0; i < size; i++) data[i] = (byte) (i * 137 + size);
            for (boolean lines : new boolean[]{false, true}) {
                Base64IOChecks.Case test = Base64IOChecks.Case.normal(data, lines, 4093);
                if (args.length > 1) {
                    var source = Base64IOChecks.run(false, test);
                    var generated = Base64IOChecks.runGenerated(Class.forName(args[1]), test);
                    if (!source.equals(generated)) throw new AssertionError(test + ": " + source + " vs " + generated);
                } else Base64IOChecks.assertMatches(test);
                if (!Arrays.equals(Base64IOChecks.successfulOutput(data, lines), Base64IOChecks.run(false, test).output))
                    throw new AssertionError(test);
            }
        }
    }
}

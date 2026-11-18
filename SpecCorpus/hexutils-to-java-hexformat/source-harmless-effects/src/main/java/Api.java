import net.lbruun.hexutils.HexHarmless;
public class Api {
 public static char[] convertToHarmless(char[] x) { return HexHarmless.convertToHarmless(x); }
 public static char[] convertFromHarmless(char[] x) { return HexHarmless.convertFromHarmless(x); }
 public static byte[] hexStrHarmlessToBytes(char[] x) { return HexHarmless.hexStrHarmlessToBytes(x); }
 public static byte[] hexStrHarmlessToBytes(CharSequence x) { return HexHarmless.hexStrHarmlessToBytes(x); }
}

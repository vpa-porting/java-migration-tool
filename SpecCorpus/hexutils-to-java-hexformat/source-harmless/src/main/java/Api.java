import net.lbruun.hexutils.HexHarmless;
public class Api {
    public static char convertToHarmless(char c) { return HexHarmless.convertToHarmless(c); }
    public static char convertFromHarmless(char c) { return HexHarmless.convertFromHarmless(c); }
    public static char[] byteToHexHarmless(byte b) { return HexHarmless.byteToHexHarmless(b); }
    public static char[] bytesToHexHarmless(byte[] b) { return HexHarmless.bytesToHexHarmless(b); }
    public static String bytesToHexStrHarmless(byte[] b) { return HexHarmless.bytesToHexStrHarmless(b); }
    public static byte hexCharHarmlessToByte(char a, char b) { return HexHarmless.hexCharHarmlessToByte(a,b); }
}

import net.lbruun.hexutils.Hex;
import net.lbruun.hexutils.Hex.HexCase;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public class Api {
    public static char[] byteToHex(byte p0, HexCase p1) throws Exception {
        return Hex.byteToHex(p0, p1);
    }
    public static char[] bytesToHex(byte[] p0, HexCase p1, String p2) throws Exception {
        return Hex.bytesToHex(p0, p1, p2);
    }
    public static String bytesToHexStr(byte[] p0, HexCase p1, String p2) throws Exception {
        return Hex.bytesToHexStr(p0, p1, p2);
    }
    public static String bytesToHexStr(byte[] p0, HexCase p1) throws Exception {
        return Hex.bytesToHexStr(p0, p1);
    }
    public static byte[] hexStrToBytes(char[] p0, String p1) throws Exception {
        return Hex.hexStrToBytes(p0, p1);
    }
    public static byte[] hexStrToBytes(char[] p0) throws Exception {
        return Hex.hexStrToBytes(p0);
    }
    public static byte[] hexStrToBytes(CharSequence p0, String p1) throws Exception {
        return Hex.hexStrToBytes(p0, p1);
    }
    public static byte[] hexStrToBytes(CharSequence p0) throws Exception {
        return Hex.hexStrToBytes(p0);
    }
    public static boolean isHexChar(char p0) throws Exception {
        return Hex.isHexChar(p0);
    }
    public static void hexToBytesStreaming(Path p0, Path p1, String p2, OpenOption... p3) throws Exception {
        Hex.hexToBytesStreaming(p0, p1, p2, p3);
    }
    public static boolean isHexStr(String p0) throws Exception {
        return Hex.isHexStr(p0);
    }
    public static byte hexCharToByte(char p0, char p1) throws Exception {
        return Hex.hexCharToByte(p0, p1);
    }
    public static StringBuilder bytesToHexStr(byte[] p0, HexCase p1, String p2, StringBuilder p3) throws Exception {
        return Hex.bytesToHexStr(p0, p1, p2, p3);
    }
    public static StringBuilder bytesToHexStr(byte[] p0, HexCase p1, StringBuilder p2) throws Exception {
        return Hex.bytesToHexStr(p0, p1, p2);
    }
}

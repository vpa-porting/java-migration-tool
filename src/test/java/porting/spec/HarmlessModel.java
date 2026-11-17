package porting.spec;

import java.util.HexFormat;

/** Executable specification, not a target adapter. See EXTENSION_PLAN.md. */
public final class HarmlessModel {
    private static final String CLASSIC = "0123456789abcdef";
    private static final String HARMLESS = "gh2k456789mbcdtf";
    private HarmlessModel() {}

    public static char convertToHarmless(char c) { return map(c, CLASSIC, HARMLESS); }
    public static char convertFromHarmless(char c) { return map(c, HARMLESS, CLASSIC); }
    private static char map(char c, String from, String to) {
        int index = from.indexOf(c);
        if (index < 0) throw new IllegalArgumentException("invalid alphabet character");
        return to.charAt(index);
    }
    public static char[] convertToHarmless(char[] data) { return mapArray(data, true); }
    public static char[] convertFromHarmless(char[] data) { return mapArray(data, false); }
    private static char[] mapArray(char[] data, boolean forward) {
        if (data == null) return null;
        for (int i = 0; i < data.length; i++)
            data[i] = forward ? convertToHarmless(data[i]) : convertFromHarmless(data[i]);
        return data;
    }
    public static char[] byteToHexHarmless(byte b) {
        return convertToHarmless(HexFormat.of().toHexDigits(b).toCharArray());
    }
    public static char[] bytesToHexHarmless(byte[] bytes) {
        return bytes == null ? null : convertToHarmless(HexFormat.of().formatHex(bytes).toCharArray());
    }
    public static String bytesToHexStrHarmless(byte[] bytes) { return new String(bytesToHexHarmless(bytes)); }
    public static byte hexCharHarmlessToByte(char a, char b) {
        int high = CLASSIC.indexOf(convertFromHarmless(a));
        int low = CLASSIC.indexOf(convertFromHarmless(b));
        return (byte) (high * 16 + low);
    }
    public static byte[] hexStrHarmlessToBytes(char[] chars) {
        return chars == null ? null : parse(convertFromHarmless(chars));
    }
    public static byte[] hexStrHarmlessToBytes(CharSequence s) {
        if (s == null) return null;
        char[] converted = new char[s.length()];
        for (int i = 0; i < s.length(); i++) converted[i] = convertFromHarmless(s.charAt(i));
        return parse(converted);
    }
    private static byte[] parse(char[] converted) {
        // After inverse mapping, every digit is valid classic hex. Odd length
        // fails with IllegalArgumentException in both the original and the JDK.
        return HexFormat.of().parseHex(new String(converted));
    }
}

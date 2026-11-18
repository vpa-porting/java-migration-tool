public class Api {

    public static char[] convertToHarmless(char[] x) throws Exception {
        return generated_convertToHarmless(x);
    }

    public static char[] convertFromHarmless(char[] x) throws Exception {
        return generated_convertFromHarmless(x);
    }

    public static byte[] hexStrHarmlessToBytes(char[] x) throws Exception {
        return generated_hexStrHarmlessToBytes(x);
    }

    public static byte[] hexStrHarmlessToBytes(CharSequence x) throws Exception {
        return generated_hexStrHarmlessToBytes(x);
    }

    public static char[] generated_convertToHarmless(char[] data) throws Exception {
        char[] result0 = new Object() {

            public char[] map(char[] data, String from, String to) {
                if (data == null)
                    return null;
                for (int i = 0; i < data.length; i++) {
                    int index = from.indexOf(data[i]);
                    if (index < 0)
                        throw new IllegalArgumentException();
                    data[i] = to.charAt(index);
                }
                return data;
            }

            public char[] sequence(java.lang.CharSequence data, String from, String to) {
                char[] result = new char[data.length()];
                for (int i = 0; i < data.length(); i++) {
                    int index = from.indexOf(data.charAt(i));
                    if (index < 0)
                        throw new IllegalArgumentException();
                    result[i] = to.charAt(index);
                }
                return result;
            }
        }.map(data, "0123456789abcdef", "gh2k456789mbcdtf");
        return result0;
    }

    public static char[] generated_convertFromHarmless(char[] data) throws Exception {
        char[] result0 = new Object() {

            public char[] map(char[] data, String from, String to) {
                if (data == null)
                    return null;
                for (int i = 0; i < data.length; i++) {
                    int index = from.indexOf(data[i]);
                    if (index < 0)
                        throw new IllegalArgumentException();
                    data[i] = to.charAt(index);
                }
                return data;
            }

            public char[] sequence(java.lang.CharSequence data, String from, String to) {
                char[] result = new char[data.length()];
                for (int i = 0; i < data.length(); i++) {
                    int index = from.indexOf(data.charAt(i));
                    if (index < 0)
                        throw new IllegalArgumentException();
                    result[i] = to.charAt(index);
                }
                return result;
            }
        }.map(data, "gh2k456789mbcdtf", "0123456789abcdef");
        return result0;
    }

    public static byte[] generated_hexStrHarmlessToBytes(char[] data) throws Exception {
        if ((data == null)) {
            return null;
        } else {
            char[] result0 = new Object() {

                public char[] map(char[] data, String from, String to) {
                    if (data == null)
                        return null;
                    for (int i = 0; i < data.length; i++) {
                        int index = from.indexOf(data[i]);
                        if (index < 0)
                            throw new IllegalArgumentException();
                        data[i] = to.charAt(index);
                    }
                    return data;
                }

                public char[] sequence(java.lang.CharSequence data, String from, String to) {
                    char[] result = new char[data.length()];
                    for (int i = 0; i < data.length(); i++) {
                        int index = from.indexOf(data.charAt(i));
                        if (index < 0)
                            throw new IllegalArgumentException();
                        result[i] = to.charAt(index);
                    }
                    return result;
                }
            }.map(data, "gh2k456789mbcdtf", "0123456789abcdef");
            java.lang.CharSequence result1 = new java.lang.String(result0);
            byte[] result2 = java.util.HexFormat.of().parseHex(result1);
            return result2;
        }
    }

    public static byte[] generated_hexStrHarmlessToBytes(java.lang.CharSequence data) throws Exception {
        if ((data == null)) {
            return null;
        } else {
            char[] result0 = new Object() {

                public char[] map(char[] data, String from, String to) {
                    if (data == null)
                        return null;
                    for (int i = 0; i < data.length; i++) {
                        int index = from.indexOf(data[i]);
                        if (index < 0)
                            throw new IllegalArgumentException();
                        data[i] = to.charAt(index);
                    }
                    return data;
                }

                public char[] sequence(java.lang.CharSequence data, String from, String to) {
                    char[] result = new char[data.length()];
                    for (int i = 0; i < data.length(); i++) {
                        int index = from.indexOf(data.charAt(i));
                        if (index < 0)
                            throw new IllegalArgumentException();
                        result[i] = to.charAt(index);
                    }
                    return result;
                }
            }.sequence(data, "gh2k456789mbcdtf", "0123456789abcdef");
            java.lang.CharSequence result1 = new java.lang.String(result0);
            byte[] result2 = java.util.HexFormat.of().parseHex(result1);
            return result2;
        }
    }
}

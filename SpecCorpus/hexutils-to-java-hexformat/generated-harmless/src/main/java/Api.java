import static java.lang.String.*;
import static java.util.HexFormat.*;

public class Api {

    public static char convertToHarmless(char c) throws Exception {
        return generated_convertToHarmless(c);
    }

    public static char convertFromHarmless(char c) throws Exception {
        return generated_convertFromHarmless(c);
    }

    public static char[] byteToHexHarmless(byte b) throws Exception {
        return generated_byteToHexHarmless(b);
    }

    public static char[] bytesToHexHarmless(byte[] b) throws Exception {
        return generated_bytesToHexHarmless(b);
    }

    public static String bytesToHexStrHarmless(byte[] b) throws Exception {
        return generated_bytesToHexStrHarmless(b);
    }

    public static byte hexCharHarmlessToByte(char a, char b) throws Exception {
        return generated_hexCharHarmlessToByte(a, b);
    }

    public static char generated_convertToHarmless(char c) throws Exception {
        if ((((c >= (char) 0x0030) && (c <= (char) 0x0039)) || ((c >= (char) 0x0061) && (c <= (char) 0x0066)))) {
            if ((c == (char) 0x0030)) {
                return (char) (char) 0x0067;
            } else {
                if ((c == (char) 0x0031)) {
                    return (char) (char) 0x0068;
                } else {
                    if ((c == (char) 0x0033)) {
                        return (char) (char) 0x006b;
                    } else {
                        if ((c == (char) 0x0061)) {
                            return (char) (char) 0x006d;
                        } else {
                            if ((c == (char) 0x0065)) {
                                return (char) (char) 0x0074;
                            } else {
                                return (char) c;
                            }
                        }
                    }
                }
            }
        } else {
            throw new java.lang.IllegalArgumentException();
        }
    }

    public static char generated_convertFromHarmless(char c) throws Exception {
        if ((((((((((((c == (char) 0x0032) || ((c >= (char) 0x0034) && (c <= (char) 0x0039))) || (c == (char) 0x0062)) || (c == (char) 0x0063)) || (c == (char) 0x0064)) || (c == (char) 0x0066)) || (c == (char) 0x0067)) || (c == (char) 0x0068)) || (c == (char) 0x006b)) || (c == (char) 0x006d)) || (c == (char) 0x0074))) {
            if ((c == (char) 0x0067)) {
                return (char) (char) 0x0030;
            } else {
                if ((c == (char) 0x0068)) {
                    return (char) (char) 0x0031;
                } else {
                    if ((c == (char) 0x006b)) {
                        return (char) (char) 0x0033;
                    } else {
                        if ((c == (char) 0x006d)) {
                            return (char) (char) 0x0061;
                        } else {
                            if ((c == (char) 0x0074)) {
                                return (char) (char) 0x0065;
                            } else {
                                return (char) c;
                            }
                        }
                    }
                }
            }
        } else {
            throw new java.lang.IllegalArgumentException();
        }
    }

    public static char[] generated_byteToHexHarmless(byte b) throws Exception {
        String result0 = java.util.HexFormat.of().toHexDigits(b);
        String result1 = result0.replace((char) 0x0030, (char) 0x0067);
        String result2 = result1.replace((char) 0x0031, (char) 0x0068);
        String result3 = result2.replace((char) 0x0033, (char) 0x006b);
        String result4 = result3.replace((char) 0x0061, (char) 0x006d);
        String result5 = result4.replace((char) 0x0065, (char) 0x0074);
        char[] result6 = result5.toCharArray();
        return result6;
    }

    public static char[] generated_bytesToHexHarmless(byte[] bytes) throws Exception {
        if ((bytes == null)) {
            return null;
        } else {
            String result0 = java.util.HexFormat.of().formatHex(bytes);
            String result1 = result0.replace((char) 0x0030, (char) 0x0067);
            String result2 = result1.replace((char) 0x0031, (char) 0x0068);
            String result3 = result2.replace((char) 0x0033, (char) 0x006b);
            String result4 = result3.replace((char) 0x0061, (char) 0x006d);
            String result5 = result4.replace((char) 0x0065, (char) 0x0074);
            char[] result6 = result5.toCharArray();
            return result6;
        }
    }

    public static String generated_bytesToHexStrHarmless(byte[] bytes) throws Exception {
        if ((bytes == null)) {
            throw new java.lang.NullPointerException();
        } else {
            String result0 = java.util.HexFormat.of().formatHex(bytes);
            String result1 = result0.replace((char) 0x0030, (char) 0x0067);
            String result2 = result1.replace((char) 0x0031, (char) 0x0068);
            String result3 = result2.replace((char) 0x0033, (char) 0x006b);
            String result4 = result3.replace((char) 0x0061, (char) 0x006d);
            String result5 = result4.replace((char) 0x0065, (char) 0x0074);
            return result5;
        }
    }

    public static byte generated_hexCharHarmlessToByte(char a, char b) throws Exception {
        if ((((((((((((a == (char) 0x0032) || ((a >= (char) 0x0034) && (a <= (char) 0x0039))) || (a == (char) 0x0062)) || (a == (char) 0x0063)) || (a == (char) 0x0064)) || (a == (char) 0x0066)) || (a == (char) 0x0067)) || (a == (char) 0x0068)) || (a == (char) 0x006b)) || (a == (char) 0x006d)) || (a == (char) 0x0074))) {
            if ((a == (char) 0x0067)) {
                if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                    if ((b == (char) 0x0067)) {
                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                        return (byte) ((result0 * 16) + result1);
                    } else {
                        if ((b == (char) 0x0068)) {
                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                            return (byte) ((result0 * 16) + result1);
                        } else {
                            if ((b == (char) 0x006b)) {
                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                return (byte) ((result0 * 16) + result1);
                            } else {
                                if ((b == (char) 0x006d)) {
                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                    return (byte) ((result0 * 16) + result1);
                                } else {
                                    if ((b == (char) 0x0074)) {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                        int result1 = java.util.HexFormat.fromHexDigit(b);
                                        return (byte) ((result0 * 16) + result1);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    throw new java.lang.IllegalArgumentException();
                }
            } else {
                if ((a == (char) 0x0068)) {
                    if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                        if ((b == (char) 0x0067)) {
                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                            return (byte) ((result0 * 16) + result1);
                        } else {
                            if ((b == (char) 0x0068)) {
                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                return (byte) ((result0 * 16) + result1);
                            } else {
                                if ((b == (char) 0x006b)) {
                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                    return (byte) ((result0 * 16) + result1);
                                } else {
                                    if ((b == (char) 0x006d)) {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        if ((b == (char) 0x0074)) {
                                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                            return (byte) ((result0 * 16) + result1);
                                        } else {
                                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                            int result1 = java.util.HexFormat.fromHexDigit(b);
                                            return (byte) ((result0 * 16) + result1);
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        throw new java.lang.IllegalArgumentException();
                    }
                } else {
                    if ((a == (char) 0x006b)) {
                        if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                            if ((b == (char) 0x0067)) {
                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                return (byte) ((result0 * 16) + result1);
                            } else {
                                if ((b == (char) 0x0068)) {
                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                    return (byte) ((result0 * 16) + result1);
                                } else {
                                    if ((b == (char) 0x006b)) {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        if ((b == (char) 0x006d)) {
                                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                            return (byte) ((result0 * 16) + result1);
                                        } else {
                                            if ((b == (char) 0x0074)) {
                                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                return (byte) ((result0 * 16) + result1);
                                            } else {
                                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                                int result1 = java.util.HexFormat.fromHexDigit(b);
                                                return (byte) ((result0 * 16) + result1);
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            throw new java.lang.IllegalArgumentException();
                        }
                    } else {
                        if ((a == (char) 0x006d)) {
                            if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                                if ((b == (char) 0x0067)) {
                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                    return (byte) ((result0 * 16) + result1);
                                } else {
                                    if ((b == (char) 0x0068)) {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        if ((b == (char) 0x006b)) {
                                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                            return (byte) ((result0 * 16) + result1);
                                        } else {
                                            if ((b == (char) 0x006d)) {
                                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                return (byte) ((result0 * 16) + result1);
                                            } else {
                                                if ((b == (char) 0x0074)) {
                                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                    return (byte) ((result0 * 16) + result1);
                                                } else {
                                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                    int result1 = java.util.HexFormat.fromHexDigit(b);
                                                    return (byte) ((result0 * 16) + result1);
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                throw new java.lang.IllegalArgumentException();
                            }
                        } else {
                            if ((a == (char) 0x0074)) {
                                if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                                    if ((b == (char) 0x0067)) {
                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        if ((b == (char) 0x0068)) {
                                            int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                            return (byte) ((result0 * 16) + result1);
                                        } else {
                                            if ((b == (char) 0x006b)) {
                                                int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                                return (byte) ((result0 * 16) + result1);
                                            } else {
                                                if ((b == (char) 0x006d)) {
                                                    int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                    return (byte) ((result0 * 16) + result1);
                                                } else {
                                                    if ((b == (char) 0x0074)) {
                                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                        return (byte) ((result0 * 16) + result1);
                                                    } else {
                                                        int result0 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                        int result1 = java.util.HexFormat.fromHexDigit(b);
                                                        return (byte) ((result0 * 16) + result1);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    throw new java.lang.IllegalArgumentException();
                                }
                            } else {
                                if ((((((((((((b == (char) 0x0032) || ((b >= (char) 0x0034) && (b <= (char) 0x0039))) || (b == (char) 0x0062)) || (b == (char) 0x0063)) || (b == (char) 0x0064)) || (b == (char) 0x0066)) || (b == (char) 0x0067)) || (b == (char) 0x0068)) || (b == (char) 0x006b)) || (b == (char) 0x006d)) || (b == (char) 0x0074))) {
                                    if ((b == (char) 0x0067)) {
                                        int result0 = java.util.HexFormat.fromHexDigit(a);
                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0030);
                                        return (byte) ((result0 * 16) + result1);
                                    } else {
                                        if ((b == (char) 0x0068)) {
                                            int result0 = java.util.HexFormat.fromHexDigit(a);
                                            int result1 = java.util.HexFormat.fromHexDigit((char) 0x0031);
                                            return (byte) ((result0 * 16) + result1);
                                        } else {
                                            if ((b == (char) 0x006b)) {
                                                int result0 = java.util.HexFormat.fromHexDigit(a);
                                                int result1 = java.util.HexFormat.fromHexDigit((char) 0x0033);
                                                return (byte) ((result0 * 16) + result1);
                                            } else {
                                                if ((b == (char) 0x006d)) {
                                                    int result0 = java.util.HexFormat.fromHexDigit(a);
                                                    int result1 = java.util.HexFormat.fromHexDigit((char) 0x0061);
                                                    return (byte) ((result0 * 16) + result1);
                                                } else {
                                                    if ((b == (char) 0x0074)) {
                                                        int result0 = java.util.HexFormat.fromHexDigit(a);
                                                        int result1 = java.util.HexFormat.fromHexDigit((char) 0x0065);
                                                        return (byte) ((result0 * 16) + result1);
                                                    } else {
                                                        int result0 = java.util.HexFormat.fromHexDigit(a);
                                                        int result1 = java.util.HexFormat.fromHexDigit(b);
                                                        return (byte) ((result0 * 16) + result1);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    throw new java.lang.IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
            }
        } else {
            throw new java.lang.IllegalArgumentException();
        }
    }
}

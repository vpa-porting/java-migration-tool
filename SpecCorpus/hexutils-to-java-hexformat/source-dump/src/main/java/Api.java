import net.lbruun.hexutils.HexDump;
import net.lbruun.hexutils.Hex.HexCase;
import java.io.PrintStream;
public class Api {
 public static String[] prettyPrint(byte[] d, HexCase c, int w, int k) { return HexDump.prettyPrint(d,c,w,k); }
 public static String[] prettyPrint(byte[] d) { return HexDump.prettyPrint(d); }
 public static String prettyPrintStr(byte[] d, HexCase c, int w, int k, String s) { return HexDump.prettyPrintStr(d,c,w,k,s); }
 public static String prettyPrintStr(byte[] d, HexCase c, int w, int k) { return HexDump.prettyPrintStr(d,c,w,k); }
 public static String prettyPrintStr(byte[] d) { return HexDump.prettyPrintStr(d); }
 public static void prettyPrint(byte[] d, HexCase c, int w, int k, PrintStream ps) { HexDump.prettyPrint(d,c,w,k,ps); }
 public static void prettyPrint(byte[] d, PrintStream ps) { HexDump.prettyPrint(d,ps); }
}

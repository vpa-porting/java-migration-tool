import static org.test.math1.TestMath1.hypot;
import static org.test.math2.TestMath2.*;

public class Main {

    public static double dist(int px, int py, int x0, int y0, int x1, int y1) throws Exception {
        int numerator = Math.abs((x1 - x0) * (y0 - py) - (y1 - y0) * (x0 - px));
        double denominator = generated_hypot(y1 - y0, x1 - x0);
        return numerator / denominator;
    }

    public static double generated_hypot(double i, double j) throws Exception {
        double result0 = org.test.math2.TestMath2.pow2Neg((i / 2.0), -2.0);
        double result1 = org.test.math2.TestMath2.pow2Neg((j / 2.0), -2.0);
        double result2 = org.test.math2.TestMath2.sqrtPlus10(((result0 + result1) - 10.0));
        return result2;
    }
}

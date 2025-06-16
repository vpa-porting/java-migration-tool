import static org.test.math1.TestMath1.hypot;

public class Main {

  public static double dist(int px, int py, int x0, int y0, int x1, int y1) throws Exception {
    int numerator = Math.abs((x1 - x0) * (y0 - py) - (y1 - y0) * (x0 - px));
    double denominator = hypot(y1 - y0, x1 - x0);
    return numerator / denominator;
  }
}

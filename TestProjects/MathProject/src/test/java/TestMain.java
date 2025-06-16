import org.junit.Test;

public class TestMain {

  @Test
  public void test() throws Exception {
    //0.0
    //0.0
    //6.704783996548059
    //0.0
    //5.852057359806529
    //0.0
    //5.252257314388902
    //2.4576957615571215
    //10.0
    //0.9407208683835973
    System.out.println(Main.dist(0, 0, 10, 10, 5, 5));
    System.out.println(Main.dist(0, 0, 10, 10, 7, 7));
    System.out.println(Main.dist(0, 0, 10, 10, 7, 0));
    System.out.println(Main.dist(0, 0, 10, 10, 0, 0));
    System.out.println(Main.dist(0, 0, 10, 10, 7, 2));

    System.out.println(Main.dist(10, 0, 0, 10, 5, 5));
    System.out.println(Main.dist(10, 0, 0, 10, 7, 7));
    System.out.println(Main.dist(10, 0, 0, 10, 7, 0));
    System.out.println(Main.dist(10, 0, 0, 10, 0, 0));
    System.out.println(Main.dist(10, 0, 0, 10, 7, 2));
  }
}

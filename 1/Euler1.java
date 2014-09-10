import java.util.stream.IntStream;

public class Euler1 {
  private static boolean isMultipleOf(int x, int n) {
    return x % n == 0;
  }

  public static void main(String args[]) {
    final int sum = IntStream.range(0, 1000)
      .filter(i -> isMultipleOf(i, 3) || isMultipleOf(i, 5))
      .sum();

    System.out.println(sum);
  }
}
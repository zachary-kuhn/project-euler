public class Euler2 {
  public static void main(String[] args) {
    int a = 0, b = 1, sum = 0, current;

    while (a <= 4000000) {
      if (a % 2 == 0) {
        sum = sum + a;
      }

      current = a;
      a = b;
      b = b + current;
    }

    System.out.println(sum);
  }
}

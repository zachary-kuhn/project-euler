import java.util.Iterator;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.Spliterators;
import java.util.PrimitiveIterator;
import java.util.stream.StreamSupport;

public class Euler2 {
  private static final PrimitiveIterator.OfInt Fib = new PrimitiveIterator.OfInt() {
    private int a = 0, b = 1;

    @Override
    public boolean hasNext() {
      return a < 4_000_000;
    }

    @Override
    public int nextInt() {
      int current = a;

      a = b;
      b = b + current;

      return current;
    }
  };

  public static void main(String[] args) {
    final Iterable<Integer> iterable = () -> Fib;
    final IntStream fibStream = StreamSupport.intStream(Spliterators.spliteratorUnknownSize(Fib, 0), false);

    final int sum = fibStream
      .filter(i -> i % 2 == 0)
      .sum();

    System.out.println(sum);
  }
}

#import <stdio.h>

int main (void)
{
  int a = 0, b = 1, sum = 0, current;
    
  while (a <= 4000000) {
    if (a % 2 == 0) {
      sum = sum + a;
    }

    current = a;
    a = b;
    b = b + current;
  }

  printf("%d\n", sum);

  return 0;
}

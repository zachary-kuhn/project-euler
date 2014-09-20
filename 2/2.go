package main

import "fmt"

func main() {
  a := 0
  b := 1
  sum := 0

  for a <= 4000000 {
    if a % 2 == 0 {
      sum = sum + a
    }

    a, b = b, a + b
  }

  fmt.Println(sum)
}

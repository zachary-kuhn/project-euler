def fib():
  a = b = 1
  while True:
    yield a
    a, b = b, a + b

fib_generator = fib()

total = 0
i = next(fib_generator)

while i < 4000000:
  if i % 2 == 0:
    total = total + i

  i = next(fib_generator)

print(total)

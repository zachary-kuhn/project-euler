fib = Enumerator.new do |yielder|
  a = b = 1
  loop do
    yielder << a
    a, b = b, a + b
  end
end

puts fib.lazy.take_while { |n| n <= 4000000 }.select { |n| n % 2 == 0 }.reduce(:+)

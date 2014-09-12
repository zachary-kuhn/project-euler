let numbers = Array(0..<1000)

println(numbers.filter({ $0 % 3 == 0 || $0 % 5 == 0 }).reduce(0, +))

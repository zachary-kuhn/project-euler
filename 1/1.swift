let validNumbers = filter(0..<1000) { $0 % 3 == 0 || $0 % 5 == 0 }

println(validNumbers.reduce(0) { $0 + $1 })

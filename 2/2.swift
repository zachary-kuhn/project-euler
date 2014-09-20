func fibonacci() -> GeneratorOf<Int> {
    var a = 1, b = 1
    
    return GeneratorOf<Int> {
        let current = a;
        a = b;
        b = b + current;
        
        return current;
    }
}

let lazyFib = lazy(fibonacci())
let evenFibonacci = lazyFib.filter { $0 % 2 == 0 }
var sum = 0

for i in evenFibonacci {
    if i >= 4_000_000 {
        break;
    }
    
    sum = sum + i
}

println(sum)

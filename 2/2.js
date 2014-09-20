function* fibonacci() {
  var a = 1, b = 1, temp;

  while (true) {
    yield a;

    temp = a;
    a = b;
    b = b + temp;
  }
}

var i = 0,
    total = 0;

for (i of fibonacci()) {
  if (i >= 4000000) break;

  if (i % 2 === 0) {
    total = total + i;
  }
}

console.log(total);

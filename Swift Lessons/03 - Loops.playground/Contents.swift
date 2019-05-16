import UIKit

let arrayOfNumbers = [1, 4, 6, 8, 3, 4, 1, 9, 8, 4, 5]

var sum = 0

for e in arrayOfNumbers {
    sum += e
}

for x in 0 ..< 10 where x % 2 == 0{
    print(x) // 0 2 4 6 8
}

for a in 0 ... 10 where a % 2 == 0{
    print(a) // 0 2 4 6 8 10
}

for b in (0 ... 10).reversed() where b % 2 == 0{
    print(b) // 0 2 4 6 8 10
}

print(sum) // 53

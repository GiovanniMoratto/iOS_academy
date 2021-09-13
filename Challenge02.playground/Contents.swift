import UIKit

/* 2. Write a function that returns the smallest number of an array of integers */

func smallestNumber(numbers: [Int]) -> Int {
    return numbers.min() ?? .zero
}

// min() function returns the least argument passed.

// ?? operador nil-coalescing - unwraps an optional a if it contains a value, or returns a default value b if a is nil.

let min = 2
let numbersTest: [Int] = [99, 500, 350, 500, min, 599, 880]

assert(smallestNumber(numbers: numbersTest) == min, "Function Failed")

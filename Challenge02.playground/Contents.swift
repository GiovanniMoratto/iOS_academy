import UIKit

// Write a function that returns the smallest number of an array of integers

func smallestNumber(numbers: [Int]) -> Int {
    return numbers.min() ?? .zero
}

let min = 2
let numbersTest: [Int] = [99, 500, 350, 500, min, 599, 880]

assert(smallestNumber(numbers: numbersTest) == min, "Function failed")

print(smallestNumber(numbers: numbersTest))


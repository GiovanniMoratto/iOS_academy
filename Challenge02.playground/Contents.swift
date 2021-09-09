import UIKit

// Write a function that returns the smallest number of an array of integers

func smallestNumber(numbers: [Int]) -> Int {
    if numbers.isEmpty{
        return .zero
    }
    return numbers.min()!
}


let min = 2
let numbersTest = [99, 500, 350, 500, min, 599, 880]

assert(smallestNumber(numbers: numbersTest) == min, "Function failed")

print(smallestNumber(numbers: numbersTest))


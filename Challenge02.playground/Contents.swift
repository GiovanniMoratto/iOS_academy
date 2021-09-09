import UIKit

// Write a function that returns the smallest number of an array of integers

let numbersTest = [3, 50, 35, 5, 2, 5, 88]

public func smallestNumber(numbers: [Int]) -> Int? {
    return numbers.min()
}

smallestNumber(numbers: numbersTest)


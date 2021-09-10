import Foundation

// Write a function that returns the smallest number of an array of integers

public func smallestNumber(numbers: [Int]) -> Int {
    return numbers.min() ?? .zero
}

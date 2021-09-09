import Foundation

// Write a function that returns the smallest number of an array of integers

public func smallestNumber(numbers: [Int]) -> Int {
    if numbers.isEmpty{
        return .zero
    }
    return numbers.min()!
}

import Foundation

// Write a function that returns the average of a given array of doubles

public func average( numbers : [Double]) -> Double {
    return numbers.reduce(.zero, +) / Double(numbers.count)
}

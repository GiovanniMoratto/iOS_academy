import Foundation

// Write a function that returns N greatest numbers of an array of floats

public func greatestNumbers(numbers: [Float]) -> Float {
    return numbers.max() ?? .zero
}

import UIKit

// Write a function that returns N greatest numbers of an array of floats

func greatestNumbers(numbers: [Float]) -> Float {
    return numbers.max() ?? .zero
}

let max: Float = 9999.99
let numbersTest: [Float] = [50, max, 10, 5.5]

assert(greatestNumbers(numbers: numbersTest) == max, "Function failed")

print(greatestNumbers(numbers: numbersTest))

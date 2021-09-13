import UIKit

/* 4. Write a function that returns N greatest numbers of an array of floats */

func greatestNumbers(numbers: [Float]) -> Float {
    return numbers.max() ?? .zero
}

// max() function returns the maximum element in the sequence.

// ?? operador nil-coalescing - unwraps an optional a if it contains a value, or returns a default value b if a is nil.

let max: Float = 9999.99
let numbersTest: [Float] = [50, max, 10, 5.5]

assert(greatestNumbers(numbers: numbersTest) == max, "Function Failed")

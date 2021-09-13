import UIKit

/* 3. Write a function that returns the average of a given array of doubles */

func averageOfDoubles(numbers: [Double]) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    let numbersCount = Double(numbers.count)
    let average = sum/numbersCount
    return average
}

func average( numbers : [Double]) -> Double {
    return numbers.reduce(.zero, +) / Double(numbers.count)
}

// reduce() function returns the result of combining the elements of the sequence using the given closure.

let numbersTest: [Double] = [3.50, 50.15, 35.20, 5.45, 2.11, 5.45, 88.77]

assert(averageOfDoubles(numbers: numbersTest) == average(numbers: numbersTest), "Function Fail")

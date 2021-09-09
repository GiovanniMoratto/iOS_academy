import UIKit

// Write a function that returns the average of a given array of doubles

func averageOfDoubles(nums: [Double]) -> Double {
    var sum = 0.0
    for num in nums {
        sum += num
    }
    let numbersCount = Double(nums.count)
    let average = sum/numbersCount
    return average
}

func average( numbers : [Double]) -> Double {
    return numbers.reduce(.zero, +) / Double(numbers.count)
}

let doublesTest = [3.50, 50.15, 35.20, 5.45, 2.11, 5.45, 88.77]

assert(averageOfDoubles(nums: doublesTest) == average(numbers: doublesTest), "Function Fail")

print(averageOfDoubles(nums: doublesTest))


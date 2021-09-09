import Foundation

// Write a function that returns the average of a given array of doubles

public func averageOfDoubles(nums: [Double]) -> Double {
    var sum = 0.0
    for num in nums {
        sum += num
    }
    let numbersCount = Double(nums.count)
    let average = sum/numbersCount
    return average
}

public func average( numbers : [Double]) -> Double {
    return numbers.reduce(.zero, +) / Double(numbers.count)
}

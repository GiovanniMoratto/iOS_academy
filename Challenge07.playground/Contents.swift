import UIKit

// Write a function that performs a given arithmetic operation in a given pair of doubles

enum Operations {
    case SUM
    case SUB
    case MULTI
    case DIV
    case SQRT
    case EXPO
}

func calculator(number1: Double, operator: Operations, number2: Double) -> Double {
    switch `operator` {
    case .SUM:
        return number1 + number2
    case .SUB:
        return number1 - number2
    case .MULTI:
        return number1 * number2
    case .DIV:
        if number2 != 0.0 {
            return number1 / number2
        } else {
            print("Error: Can't divide by zero.")
            return number1 / number2
        }
    case .SQRT:
        return pow(number1, 1/number2)
    case .EXPO:
        return pow(number1, number2)
    }
}

let testNumber1: Double = 2.0
let testNumber2: Double = 2.0
let testNumber2Error: Double = 0

assert(calculator(number1: testNumber1, operator: Operations.SUM, number2: testNumber2) == testNumber1 + testNumber2, "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.SUB, number2: testNumber2) == testNumber1 - testNumber2, "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.MULTI, number2: testNumber2) == testNumber1 * testNumber2, "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.DIV, number2: testNumber2) == testNumber1 / testNumber2, "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.DIV, number2: testNumber2Error) == testNumber1 / testNumber2Error, "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.SQRT, number2: testNumber2Error) == pow(testNumber1, 1/testNumber2Error), "Function Failed")
assert(calculator(number1: testNumber1, operator: Operations.EXPO, number2: testNumber2Error) == pow(testNumber1, testNumber2Error), "Function Failed")


print(calculator(number1: testNumber1, operator: Operations.SUM, number2: testNumber2))
print(calculator(number1: testNumber1, operator: Operations.SUB, number2: testNumber2))
print(calculator(number1: testNumber1, operator: Operations.MULTI, number2: testNumber2))
print(calculator(number1: testNumber1, operator: Operations.DIV, number2: testNumber2))
print(calculator(number1: testNumber1, operator: Operations.SQRT, number2: testNumber2))
print(calculator(number1: testNumber1, operator: Operations.EXPO, number2: testNumber2))

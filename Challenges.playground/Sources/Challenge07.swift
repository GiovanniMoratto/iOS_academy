import Foundation

// Write a function that performs a given arithmetic operation in a given pair of doubles

public enum Operations {
    case SUM
    case SUB
    case MULTI
    case DIV
    case SQRT
    case EXPO
}

public func calculator(number1: Double, operator: Operations, number2: Double) -> Double {
    switch `operator` {
    case .SUM:
        return number1 + number2
    case .SUB:
        return number1 - number2
    case .MULTI:
        return number1 * number2
    case .DIV:
        if number2 != .zero {
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

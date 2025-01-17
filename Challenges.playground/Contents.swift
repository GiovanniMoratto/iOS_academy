import UIKit

// Challenge 01
let challenge01: String = "abcdefg"
print(uniqueLetters(letters: challenge01))

// Challenge 02
let challenge02: [Int] = [3, 50, 35, 5, 2, 5, 88]
print(smallestNumber(numbers: challenge02))

// Challenge 03
let challenge03: [Double] = [3.50, 50.15, 35.20, 5.45, 2.11, 5.45, 88.77]
print(average(numbers: challenge03))

// Challenge 04
let challenge04: [Float] = [50, 1000.50, 10, 5.5]
print(greatestNumbers(numbers: challenge04))

// Challenge 05
let challenge05: String = "A long time ago, in a galaxy far, far away, an intergalactic war continues to rage between the evil Empire and the rebel alliance."
print(separatedWords(string: challenge05))

// Challenge 06
let challenge06: [String] = separatedWords(string: challenge05)
print(startsWith(string: challenge06, character: "c"))

// Challenge 07
let numb1: Double = 2.0
let numb2: Double = 2.0
let op: Operations = .SUM
print(calculator(number1: numb1, operator: op, number2: numb2))

// Challenge 08
let board: [[String]] = [["O", "X", " "], ["O", "O", "O"], ["X", " ", "X"]]
let simbol: String = "O"
print(checkVictory(list: board, simbol: simbol))

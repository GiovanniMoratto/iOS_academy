import UIKit

/* 6. Write a function that returns the amount of strings in an array that starts with a given character */

func startsWith(string: [String] , character: Character) -> Int {
    return string.filter{$0.lowercased().hasPrefix(String(character.lowercased()))}.count
}

// Challenge 05
func separatedWords(string: String) -> [String] {
    return string.components(separatedBy: " ")
}

let text: String = "A long time ago, in a galaxy far, far away, an intergalactic war continues to rage between the evil Empire and the rebel alliance."

let strings: [String] = separatedWords(string: text)

assert(startsWith(string: strings, character: "c") == 1, "Function Fail")

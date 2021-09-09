import UIKit

// Write a function that returns a list of the separated words of a given string

func separatedWords(string: String) -> [String] {
    return string.components(separatedBy: " ")
}

let text: String = "A long time ago, in a galaxy far, far away, an intergalactic war continues to rage between the evil Empire and the rebel alliance."


assert(separatedWords(string: text).count == text.filter{$0 == " "}.count + 1, "Function Failed")

print(separatedWords(string: text))


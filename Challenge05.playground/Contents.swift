import UIKit

/* 5. Write a function that returns a list of the separated words of a given string */

func separatedWords(string: String) -> [String] {
    return string.components(separatedBy: " ")
}

// components function returns an array containing substrings from the receiver that have been divided by a given separator.

let text: String = "A long time ago, in a galaxy far, far away, an intergalactic war continues to rage between the evil Empire and the rebel alliance."


assert(separatedWords(string: text).count == text.filter{$0 == " "}.count + 1, "Function Failed")

// filter function returns an array containing, in order, the elements of the sequence that satisfy the given predicate.

// $0 means first argument

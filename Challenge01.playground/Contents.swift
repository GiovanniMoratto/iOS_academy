import UIKit

/* 1. Write a function that returns true if all letters are different in a given string */

func uniqueLetters(letters: String) -> Bool{
    return Set(letters).count == letters.count
}

// Set it's an unordered collection of unique elements

let lettersTestOk: String = "abcdefg"
let lettersTestFail: String = "aaaaaa"

assert(uniqueLetters(letters: lettersTestOk) == true, "Function failed")
assert(uniqueLetters(letters: lettersTestFail) == false, "Function failed")

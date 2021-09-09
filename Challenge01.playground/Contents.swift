import UIKit

// Write a function that returns true if all letters are different in a given string

func uniqueLetters(letters: String) -> Bool{
    return Set (letters).count == letters.count
}

func uniqueLettersInput(input: String) -> Bool{
    return Set (input).count == input.count
}

let lettersTestOk = "abcdefg"
let lettersTestFail = "aaaaaa"

assert(uniqueLetters(letters: lettersTestOk) == true, "Function failed")
assert(uniqueLetters(letters: lettersTestFail) == false, "Function failed")

assert(uniqueLettersInput(input: "abcda") == false, "Function failed")
assert(uniqueLettersInput(input: "abcd") == true, "Function failed")

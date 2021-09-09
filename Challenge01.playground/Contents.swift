import UIKit

// Write a function that returns true if all letters are different in a given string

let lettersTestOk = "abcdefg"
let lettersTestFail = "aaaaaa"

public func uniqueLetters(letters: String) -> Bool{
    return Set (letters).count == letters.count
}

assert(uniqueLetters(letters: lettersTestOk) == true, "Function failed")
assert(uniqueLetters(letters: lettersTestFail) == false, "Function failed")

public func uniqueLettersInput(input: String) -> Bool{
    return Set (input).count == input.count
}

assert(uniqueLettersInput(input: "abcda") == false, "Function failed")
assert(uniqueLettersInput(input: "abcd") == true, "Function failed")

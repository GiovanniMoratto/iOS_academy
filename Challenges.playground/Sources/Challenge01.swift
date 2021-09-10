import Foundation

// Write a function that returns true if all letters are different in a given string

public func uniqueLetters(letters: String) -> Bool{
    return Set (letters).count == letters.count
}

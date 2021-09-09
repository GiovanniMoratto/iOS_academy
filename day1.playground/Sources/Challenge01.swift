import Foundation

public func uniqueLetters(letters: String) -> Bool{
    return Set (letters).count == letters.count
}

public func uniqueLettersInput(input: String) -> Bool{
    return Set (input).count == input.count
}

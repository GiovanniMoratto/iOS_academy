import Foundation

// Write a function that returns a list of the separated words of a given string

public func separatedWords(string: String) -> [String] {
    return string.components(separatedBy: " ")
}

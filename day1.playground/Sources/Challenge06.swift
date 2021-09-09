import Foundation

// Write a function that returns the amount of strings in an array that starts with a given character

public func startsWith(string: [String] , character: Character) -> Int {
    return string.filter{$0.lowercased().hasPrefix(String(character.lowercased()))}.count
}

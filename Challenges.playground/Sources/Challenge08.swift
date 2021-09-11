import Foundation

// Write a function that returns true if a Tic-Tac-Toe board has a winner

public func checkVictory(list: [[String]], simbol: String) -> Bool {
    
    for row in list{
        if row[0] == simbol && row[1] == simbol && row[2] == simbol{
            return true
        }
    }
    
    for i in 0..<3{
        if list[0][i] == simbol && list[1][i] == simbol && list[2][i] == simbol{
            return true
        }
    }
    
    if list[0][0] == simbol && list[1][1] == simbol && list[2][2] == simbol{
        return true
    }
    
    if list[2][0] == simbol && list[1][1] == simbol && list[0][2] == simbol{
        return true
    }
    
    return false
}

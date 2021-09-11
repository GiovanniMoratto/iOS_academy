import UIKit

// Write a function that returns true if a Tic-Tac-Toe board has a winner

/* [" ", " ", " "],
   [" ", " ", " "],
   [" ", " ", " "] */

func checkVictory(list: [[String]], simbol: String) -> Bool {
    
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

let board: [[String]] = [["O", "X", " "], ["O", "O", "O"], ["X", " ", "X"]]
let simbol: String = "O"

assert(checkVictory(list: board, simbol: simbol) == true, "Function Fail")
print("Player \(simbol) win!")

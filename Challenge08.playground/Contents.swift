import UIKit

/* 8. Write a function that returns true if a Tic-Tac-Toe board has a winner */

/* [ [" ", " ", " "],
     [" ", " ", " "],
     [" ", " ", " "] ] */

func checkVictory(list: [[String]], simbol: String) -> Bool {
    
    // Check for victory in horizontal direction
    for row in list{
        if row[0] == simbol && row[1] == simbol && row[2] == simbol{
            return true
        }
    }
    
    // Check for victory in vertical direction
    for i in 0...2{
        if list[0][i] == simbol && list[1][i] == simbol && list[2][i] == simbol{
            return true
        }
    }

    // Check for victory in diagonal direction
    if list[0][0] == simbol && list[1][1] == simbol && list[2][2] == simbol{
        return true
    }

    // Check for victory in inverse diagonal direction
    if list[2][0] == simbol && list[1][1] == simbol && list[0][2] == simbol{
        return true
    }
    
    return false
}

let board: [[String]] = [["O", "X", " "], ["O", "O", "O"], ["X", " ", "X"]]
let simbol: String = "O"

assert(checkVictory(list: board, simbol: simbol) == true, "Function Fail")
//print("Player \(simbol) win!")

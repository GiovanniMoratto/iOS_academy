import UIKit

// Write a function that returns true if a Tic-Tac-Toe board has a winner

func makeList() -> [[String]] {
    var array: [[String]] = []
    for i in 0..<3{
        array.append(contentsOf: [])
        for _ in 0..<3{
            array[i].append(" ")
        }
    }
    return array
}

func drawLine(n: Int) -> String {
    var line = ""
    for _ in 0..<n{
        line += "-"
    }
    return line
}

func getInstructions() -> String {
    return "\nThe rules for this game are very simple, each round a player chose a free place in the # to put his simbol.\n\nThe first player will have an 'O' as a simbol and the second player an 'X'.\n\nTo chose a position  the player have to write first de number of the line followed buy the number of the row.\n\nFor the top left square the player would type 11, where the first one is fore the first row and the second 1 is for the first column, 13 would be for the top right position and 31 for the bottom left position. You can only choose a free location.\n\nThe first player taht has three simbols in a row (horizontal, vertical or diagonal) wins the game.\n\nPress ENTER to start."

}

func drawTabel(list: [[String]]){
    let marginTabel = setMargin(n: 5)
    print("\(marginTabel) \(list[0][0]) | \(list[0][1]) | \(list[0][2])")
    print("\(marginTabel)---+---+---")
    print("\(marginTabel) \(list[1][0]) | \(list[1][1]) | \(list[1][2])")
    print("\(marginTabel)---+---+---")
    print("\(marginTabel) \(list[2][0]) | \(list[2][1]) | \(list[2][2])")
}

func setMargin(n: Int) -> String {
    var margin = ""
    for _ in 0..<n{
        margin += " "
    }
    return margin
}

func render(playersTurn: Int, list: [[String]]){
    var playersTurnLocal = playersTurn
    var listLocal = list
    let position = getPosition(playersTurn: playersTurn, list: list)
    let row = position[0]!-1
    let column = position[1]!-1
    let simbol = getSimbol(player: playersTurn)
    listLocal[row][column] = simbol
    drawTabel(list: list)
    if checkVictory(list: list, simbol: simbol) {
        print("Player \(playersTurn) won!!!")
    } else if checkTie(list: list){
        print("No one won the Game!!!")
    } else {
        if playersTurnLocal == 1 {
            playersTurnLocal = 2
        } else {
            playersTurnLocal = 1
        }
        render(playersTurn: playersTurn, list: list)
    }
    
}

func getPosition(playersTurn: Int, list: [[String]]) -> [Int?] {
    var position: [Int?] = [0]
    let positionValidated = checkValidPosition(position: position)
    while positionValidated {
        let simbol = getSimbol(player: playersTurn)
        print("PLAYER \(playersTurn) \(simbol): ")
        position = Array(arrayLiteral: Int(readLine()!))
        if checkValidPosition(position: position) == false {
            print("Please fill in a valid position.")
        }
        if validPosition(position: position, list: list) == false {
            print("Please choose a empty square.")
            position = [0]
        }
    }
    return position
}

func checkValidPosition(position: [Int?]) -> Bool {
    let validPosition: [Int] = [11, 12, 13, 21, 22, 23, 31, 32, 33]
    for _ in validPosition{
        return true
    }
    return false
}

func getSimbol(player: Int) -> String {
    var simbol: String = ""
    
    if player == 1 {
        simbol = "X"
    }
    else if player == 2 {
        simbol = "O"
    }
    
    return simbol
}

func validPosition(position: [Int?], list: [[String]]) -> Bool {
    let row = Int(position[0] ?? .zero)-1
    let column = Int(position[1] ?? .zero)-1
    if list[row][column] == " "{
        return true
    }
    return false
}

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

func checkTie(list: [[String]]) -> Bool {
    for row in list{
        for column in row{
            if column == ""{
                return false
            }
        }
    }
    return true
}

func main(){
    let list = makeList()
    let horizontalLine = drawLine(n: 70)
    let instructions = getInstructions()
    let playersTurn = 1
    
    print("Tic-Tac-Toe")
    print()
    print(horizontalLine)
    print(instructions)
    print()
    
    _ = readLine()
    drawTabel(list: list)
    render(playersTurn: playersTurn, list: list)
}

main()



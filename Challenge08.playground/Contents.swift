import UIKit

// Write a function that returns true if a Tic-Tac-Toe board has a winner

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
    
    let start = readLine()
    drawTabel(list: list)
    render(playersTurn: playersTurn, list: list)
}

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
    var position = getPosition()
}

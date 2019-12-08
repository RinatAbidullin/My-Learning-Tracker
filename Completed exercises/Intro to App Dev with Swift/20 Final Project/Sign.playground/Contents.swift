import UIKit

enum GameState {
    case start, win, lose, draw
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "✋"
        case .scissors: return "✌️"
        }
    }
    
    func compare(with anotherSign: Sign) -> GameState {
        switch self {
        case .rock:
            switch anotherSign {
            case .rock: return GameState.draw
            case .paper: return GameState.lose
            case .scissors: return GameState.win
            }
        case .paper:
            switch anotherSign {
            case .rock: return GameState.win
            case .paper: return GameState.draw
            case .scissors: return GameState.lose
            }
        case .scissors:
            switch anotherSign {
            case .rock: return GameState.lose
            case .paper: return GameState.win
            case .scissors: return GameState.draw
            }
        }
    }
}

let rock = Sign.rock
let paper = Sign.paper
let scissors = Sign.scissors

rock.compare(with: rock)
rock.compare(with: paper)
rock.compare(with: scissors)

paper.compare(with: rock)
paper.compare(with: paper)
paper.compare(with: scissors)

scissors.compare(with: rock)
scissors.compare(with: paper)
scissors.compare(with: scissors)

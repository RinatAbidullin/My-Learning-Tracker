//
//  Sign.swift
//  RPS
//
//  Created by Rinat Abidullin on 19/08/2019.
//  Copyright © 2019 Rinat Abidullin. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoise = GKRandomDistribution(lowestValue: 0, highestValue: 2)

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

func randomSign() -> Sign {
    let sign = randomChoise.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return . paper
    } else {
        return .scissors
    }
}

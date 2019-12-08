//
//  ViewController.swift
//  RPS
//
//  Created by Rinat Abidullin on 19/08/2019.
//  Copyright © 2019 Rinat Abidullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appsSignLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func rockTap(_ sender: Any) {
        play(withSign: .rock)
        rockButton.isHidden = false
    }
    
    @IBAction func paperTap(_ sender: Any) {
        play(withSign: .paper)
        paperButton.isHidden = false
    }
    
    @IBAction func scissorsTap(_ sender: Any) {
        play(withSign: .scissors)
        scissorsButton.isHidden = false
    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateUI(withGameState: .start)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(withGameState: .start)
    }
    
    func updateUI(withGameState gameState: GameState) {
        switch gameState {
        case .start:
            gameStatusLabel.text = "Начинаем играть"
            self.view.backgroundColor = UIColor(red: 52.0/255, green: 73.0/255, blue: 94.0/255, alpha: 1)
            appsSignLabel.text = "🤖"
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isHidden = false
            paperButton.isEnabled = true
            scissorsButton.isHidden = false
            scissorsButton.isEnabled = true
        case .win:
            gameStatusLabel.text = "Вы выиграли"
            self.view.backgroundColor = UIColor(red: 22.0/255, green: 160.0/255, blue: 133.0/255, alpha: 1)
        case .lose:
            gameStatusLabel.text = "Вы проиграли"
            self.view.backgroundColor = UIColor(red: 192.0/255, green: 57.0/255, blue: 43.0/255, alpha: 1)
        case .draw:
            gameStatusLabel.text = "Ничья"
            self.view.backgroundColor = UIColor(red: 41.0/255, green: 128.0/255, blue: 185.0/255, alpha: 1)
        }
    }
    
    func play(withSign playerSign: Sign) {
        let botSign = randomSign()
        updateUI(withGameState: playerSign.compare(with: botSign))
        appsSignLabel.text = botSign.emoji
        playAgainButton.isHidden = false
        rockButton.isHidden = true
        rockButton.isEnabled = false
        paperButton.isHidden = true
        paperButton.isEnabled = false
        scissorsButton.isHidden = true
        scissorsButton.isEnabled = false
    }
}


//
//  ViewController.swift
//  MemeMaker
//
//  Created by Rinat Abidullin on 20/08/2019.
//  Copyright © 2019 Rinat Abidullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func actionTopCaptionSegmentedControl(_ sender: Any) {
        updateChoisesLabels()
    }
    
    @IBAction func actionBottomCaptionSegmentedControl(_ sender: Any) {
        updateChoisesLabels()
    }
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topChoices.append(CaptionOption(emoji: "🕶", caption: "You know what’s cool?"))
        topChoices.append(CaptionOption(emoji: "💥", caption: "You know what makes me mad?"))
        topChoices.append(CaptionOption(emoji: "💕", caption: "You know what I love?"))
        
        bottomChoices.append(CaptionOption(emoji: "🐱", caption: "Cats wearing hats"))
        bottomChoices.append(CaptionOption(emoji: "🐕", caption: "Dogs carrying logs"))
        bottomChoices.append(CaptionOption(emoji: "🐒", caption: "Monkeys being funky"))
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0;
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateChoisesLabels()
    }

    func updateChoisesLabels() {
        topCaptionLabel.text = (topChoices[topCaptionSegmentedControl.selectedSegmentIndex]).caption
        bottomCaptionLabel.text = (bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex]).caption
    }
}

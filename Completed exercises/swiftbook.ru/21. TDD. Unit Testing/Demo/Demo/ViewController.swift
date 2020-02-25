//
//  ViewController.swift
//  Demo
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func charactersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }
}


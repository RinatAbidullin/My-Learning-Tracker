//
//  ViewController.swift
//  05. UITextField
//
//  Created by Rinat Abidullin on 04.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.text = ""
        }
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func sendName(sender: UIButton) {
        //guard textField.text?.isEmpty == false else { return }
        
        if let name = textField.text {
            if isName(name) {
                label.text = name
            } else {
                let alert = UIAlertController(title: "Wrong name", message: "Please, input correct name", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: { [unowned self] action in
                    let newName = alert.textFields![0].text!
                    if self.isName(newName) {
                        self.label.text = newName
                    }
                })
                alert.addAction(okAction)
                alert.addTextField(configurationHandler: nil)
                present(alert, animated: true, completion: nil)
            }
        } else {
            return
        }
    }
    
    func isName(_ name: String) -> Bool {
        let decimalCharacters = CharacterSet.decimalDigits
        let numberRange = name.rangeOfCharacter(from: decimalCharacters)
        if numberRange == nil {
            return true
        } else {
            return false
        }
    }
}


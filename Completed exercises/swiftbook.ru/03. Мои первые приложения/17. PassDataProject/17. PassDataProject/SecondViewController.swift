//
//  SecondViewController.swift
//  17. PassDataProject
//
//  Created by Rinat Abidullin on 02.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
    }
}

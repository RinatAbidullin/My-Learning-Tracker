//
//  ViewController.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataProvider: DataProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


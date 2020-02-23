//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Rinat Abidullin on 23.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "John", secondName: "Smith", age: 33),
            Profile(name: "Max", secondName: "Kolby", age: 21),
            Profile(name: "Mark", secondName: "Salmon", age: 55)
        ]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell else {
            return UITableViewCell()
        }

        let profile = profiles[indexPath.row]
        
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        tableViewCell.ageLabel.text = "\(profile.age)"

        return tableViewCell
    }
}

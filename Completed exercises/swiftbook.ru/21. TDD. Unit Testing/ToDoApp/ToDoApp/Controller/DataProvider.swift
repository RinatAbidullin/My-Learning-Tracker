//
//  DataProvider.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 27.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class DataProvider: NSObject {
    
}

extension DataProvider: UITableViewDelegate {
    
}

extension DataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

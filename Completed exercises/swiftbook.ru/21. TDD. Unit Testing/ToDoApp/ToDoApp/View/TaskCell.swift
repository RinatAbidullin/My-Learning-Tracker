//
//  TaskCell.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 28.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(withTask task: Task) {
        titleLabel.text = task.title
        
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yy" // http://nsdateformatter.com
        if let date = task.date {
            dateLabel.text = df.string(from: date)
        }
        
        locationLabel.text = task.location?.name
    }
}

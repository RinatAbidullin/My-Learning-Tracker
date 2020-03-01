//
//  Task.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    let date: Date
    let location: Location?
    
    init(title: String,
         description: String? = nil,
         date: Date? = nil,
         location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = date ?? Date()
        self.location = location
    }
}


extension Task: Equatable {
    
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.title == rhs.title &&
            lhs.description == rhs.description &&
            lhs.location == rhs.location
    }
}

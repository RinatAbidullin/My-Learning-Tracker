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
    private(set) var date: Date?
    let location: Location?
    
    init(title: String,
         description: String? = nil,
         location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}

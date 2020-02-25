//
//  Task.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

struct Task {
    var title: String
    var description: String?
    private(set) var date: Date? = Date()
}

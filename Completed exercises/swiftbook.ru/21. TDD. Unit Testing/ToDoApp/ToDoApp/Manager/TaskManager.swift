//
//  TaskManager.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 27.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

class TaskManager {
    
    var taskCount = 0
    let doneTaskCount = 0
    private var tasks = [Task]()
    
    func add(task: Task) {
        tasks.append(task)
        taskCount += 1
    }
    
    func task(at index: Int) -> Task {
        return tasks[index]
    }
}

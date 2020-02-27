//
//  TaskManager.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 27.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

class TaskManager {
    
    var taskCount: Int {
        return tasks.count
    }
    var doneTaskCount: Int {
        return doneTasks.count
    }
    
    private var tasks = [Task]()
    private var doneTasks = [Task]()
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func task(at index: Int) -> Task {
        return tasks[index]
    }
    
    func checkTask(at index: Int) {
        let task = tasks.remove(at: index)
        doneTasks.append(task)
    }
    
    func doneTask(at index: Int) -> Task {
        return doneTasks[index]
    }
}

//
//  TaskManagerTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 27.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
@testable import ToDoApp

class TaskManagerTests: XCTestCase {
    
    var sut: TaskManager!

    override func setUp() {
        super.setUp()
        sut = TaskManager()
    }

    override func tearDown() {
        sut.removeAll()
        sut = nil
        super.tearDown()
    }

    func testInitTaskManagerWithZeroTasks() {
        XCTAssertEqual(sut.taskCount, 0)
    }
    
    func testInitTaskManagerWithZeroDoneTasks() {
        XCTAssertEqual(sut.doneTaskCount, 0)
    }
    
    func testAddTaskIncrementTasksCount() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        XCTAssertEqual(sut.taskCount, 1)
    }
    
    func testTaskAtIndexIsAddedTask() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        let returnedTask = sut.task(at: 0)
        
        XCTAssertEqual(returnedTask.title, task.title)
    }
    
    func testCheckTaskAtIndexChangesCounts() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        sut.checkTask(at: 0)
        
        XCTAssertEqual(sut.taskCount, 0)
        XCTAssertEqual(sut.doneTaskCount, 1)
    }
    
    func testCheckedTaskRemovedFromTasks() {
        let firstTask = Task(title: "Foo")
        let secondTask = Task(title: "Bar")
        
        sut.add(task: firstTask)
        sut.add(task: secondTask)
        
        sut.checkTask(at: 0)
        
        XCTAssertEqual(sut.task(at: 0), secondTask)
    }
    
    func testDoneTaskAddReturnsCheckedTask() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        sut.checkTask(at: 0)
        let returnedTask = sut.doneTask(at: 0)
        
        XCTAssertEqual(returnedTask, task)
    }
    
    func testRemoveAllResultsCountsBeZero() {
        sut.add(task: Task(title: "Foo"))
        sut.add(task: Task(title: "Bar"))
        sut.checkTask(at: 0)
        
        sut.removeAll()
        
        XCTAssertEqual(sut.taskCount, 0)
        XCTAssertEqual(sut.doneTaskCount, 0)
    }
    
    func testAddingSameObjectDoesNotIncrementCount() {
        sut.add(task: Task(title: "Foo"))
        sut.add(task: Task(title: "Foo"))
        
        XCTAssertEqual(sut.taskCount, 1)
    }
    
    func testWhenTaskManagerRecreatedSaveTasksShouldBeEqual() {
        var taskManager: TaskManager! = TaskManager()
        
        let task = Task(title: "Foo")
        let task1 = Task(title: "Bar")
        
        taskManager.add(task: task)
        taskManager.add(task: task1)
        
        NotificationCenter.default.post(name: UIApplication.willResignActiveNotification, object: nil)
        
        taskManager = nil
        
        taskManager = TaskManager()
        
        XCTAssertEqual(taskManager.taskCount, 2)
        XCTAssertEqual(taskManager.task(at: 0), task)
        XCTAssertEqual(taskManager.task(at: 1), task1)
    }
}

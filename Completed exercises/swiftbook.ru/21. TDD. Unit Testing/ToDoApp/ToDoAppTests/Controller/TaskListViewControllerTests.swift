 //
//  TaskListViewControllerTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 27.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
 @testable import ToDoApp

class TaskListViewControllerTests: XCTestCase {
    
    var sut: TaskListViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self))
        sut = vc as? TaskListViewController
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testWhenViewIsLoadedTableViewNotNil() {
        XCTAssertNotNil(sut.tableView)
    }
    
    func testWhenViewIsLoadedDataProviderIsNotNil() {
        XCTAssertNotNil(sut.dataProvider)
    }
    
    func testWhenViewIsLoadedTableViewDelegateIsSet() {
        XCTAssertTrue(sut.tableView.delegate is DataProvider)
    }
    
    func testWhenViewIsLoadedTableViewDataSourseeIsSet() {
        XCTAssertTrue(sut.tableView.dataSource is DataProvider)
    }
    
    func testWhenViewIsLoadedTableViewDelegateEqualsTableViewDataSource() {
        XCTAssertEqual(sut.tableView.delegate as? DataProvider, sut.tableView.dataSource as? DataProvider)
    }
    
    func testTaskListVCHasAddBarButtonWithSelfAsTarget() {
        let target = sut.navigationItem.rightBarButtonItem?.target
        
        XCTAssertEqual(target as? TaskListViewController, sut)
    }
    
    func presentedNewTaskViewController() -> NewTaskViewController? {
        guard let newTaskButton = sut.navigationItem.rightBarButtonItem,
            let action = newTaskButton.action else {
                XCTFail()
                return nil
        }
        
        UIApplication.shared.keyWindow?.rootViewController = sut
        sut.performSelector(onMainThread: action, with: newTaskButton, waitUntilDone: true)
        
        let newTaskViewController = sut.presentedViewController as! NewTaskViewController
        
        return newTaskViewController
    }
    
    func testAddNewTaskPresentsNewTaskViewController() {
        XCTAssertNotNil(presentedNewTaskViewController()?.titleTextField)
    }
    
    func testSharesSameTaskManagerWithNewTaskVC() {
        XCTAssertNotNil(sut.dataProvider.taskManager)
        XCTAssertTrue(presentedNewTaskViewController()?.taskManager === sut.dataProvider.taskManager)
    }
    
    func testWhenViewAppearedTableViewReloaded() {
        let mockTableView = MockTableView()
        sut.tableView = mockTableView
        
        sut.beginAppearanceTransition(true, animated: true)
        sut.endAppearanceTransition()
        
        XCTAssertTrue((sut.tableView as! MockTableView).isReloaded)
    }
    
    func testTappingCellSendsNotification() {
        let task = Task(title: "Foo")
        sut.dataProvider.taskManager?.add(task: task)
        
        expectation(forNotification: NSNotification.Name(rawValue: "DidSelectRow notification"), object: nil) { notification -> Bool in
            guard let taskFromNotofication = notification.userInfo?["task"] as? Task else { return false }
            return task == taskFromNotofication
        }
        
        let tableView = sut.tableView
        tableView?.delegate?.tableView?(tableView!, didSelectRowAt: IndexPath(row: 0, section: 0))
        
        waitForExpectations(timeout: 1, handler: nil)
    }
}

 extension TaskListViewControllerTests {
    
    class MockTableView: UITableView {
        var isReloaded = false
        
        override func reloadData() {
            isReloaded = true
        }
    }
 }

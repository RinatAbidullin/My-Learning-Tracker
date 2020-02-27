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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewNotNilWhenViewIsLoaded() {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storybord.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self))
        let sut = vc as! TaskListViewController
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.tableView)
    }
}

//
//  DataProviderTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 28.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
@testable import ToDoApp

class DataProviderTests: XCTestCase {
    
    var sut: DataProvider!
    var tableView: UITableView!

    override func setUp() {
        sut = DataProvider()
        tableView = UITableView()
        tableView.dataSource = sut
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNumberOfSectionIsTwo() {
        let numberOfSection = tableView.numberOfSections
        
        XCTAssertEqual(numberOfSection, 2)
    }
    
    func testNumberOfRowsInSectionZeroIsTaskCount() {
        sut.taskManager = TaskManager()
        
        sut.taskManager?.add(task: Task(title: "Foo"))
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        
        sut.taskManager?.add(task: Task(title: "Bar"))
        tableView.reloadData()
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }
}

//
//  TaskCellTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 29.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
@testable import ToDoApp

class TaskCellTests: XCTestCase {
    
    var cell: TaskCell!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self)) as! TaskListViewController
        controller.loadViewIfNeeded()
        
        let tableView = controller.tableView
        let dataSource = FakeDataSource()
        tableView?.dataSource = dataSource
        
        cell = tableView?.dequeueReusableCell(withIdentifier: String(describing: TaskCell.self), for: IndexPath(row: 0, section: 0)) as? TaskCell
    }

    func testCellHasTitleLabel() {
        XCTAssertNotNil(cell.titleLabel)
    }
    
    func testCellHasTitleLabelInContentView() {
        XCTAssertTrue(cell.titleLabel.isDescendant(of: cell.contentView))
    }
    
    func testCellHasLocationLabel() {
        XCTAssertNotNil(cell.locationLabel)
    }
    
    func testCellHasLocationLabelInContentView() {
        XCTAssertTrue(cell.locationLabel.isDescendant(of: cell.contentView))
    }
    
    func testCellHasDateLabel() {
        XCTAssertNotNil(cell.dateLabel)
    }
    
    func testCellHasDateLabelInContentView() {
        XCTAssertTrue(cell.dateLabel.isDescendant(of: cell.contentView))
    }
    
    func testConfigureSetsTitle() {
        let task = Task(title: "Foo")
        cell.configure(withTask: task)
        
        XCTAssertEqual(cell.titleLabel.text, task.title)
    }
    
    func testConfigureSetsDate() {
        let task = Task(title: "Foo")
        cell.configure(withTask: task)
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yy" // http://nsdateformatter.com
        let date = task.date
        let dateString = df.string(from: date)
        
        XCTAssertEqual(cell.dateLabel.text, dateString)
    }
    
    func testConfigureSetsLocation() {
        let task = Task(title: "Foo")
        cell.configure(withTask: task)
        
        XCTAssertEqual(cell.locationLabel.text, task.location?.name)
    }
    
    func configureCellWithDoneTask() {
        let task = Task(title: "Foo")
        cell.configure(withTask: task, done: true)
    }
    
    func testDoneTaskShouldStrikeThrough() {
        configureCellWithDoneTask()
        
        let attributedString = NSAttributedString(string: "Foo", attributes: [NSAttributedString.Key.strikethroughColor : NSUnderlineStyle.single.rawValue])
        
        XCTAssertEqual(cell.titleLabel.attributedText, attributedString)
    }
    
    func testDoneTaskDateLabelTextEqualsEmptyString() {
        configureCellWithDoneTask()
        
        XCTAssertEqual(cell.dateLabel.text, "")
    }
    
    func testDoneTaskLocationLabelTextEqualsEmptyString() {
        configureCellWithDoneTask()
        
        XCTAssertEqual(cell.locationLabel.text, "")
    }
}

extension TaskCellTests {
    
    class FakeDataSource: NSObject, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return UITableViewCell()
        }
        
        
    }
}

//
//  ToDoAppUITests.swift
//  ToDoAppUITests
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest

class ToDoAppUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        app.launchArguments.append("--UITesting")
        XCUIApplication().launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertTrue(app.isOnMainView)
        
        app.navigationBars["ToDoApp.TaskListView"].buttons["Add"].tap()
        
        app.textFields["Title"].tap()
        app.textFields["Title"].typeText("Foo")
        
        app.textFields["Location"].tap()
        app.textFields["Location"].typeText("Bar")
        
        app.textFields["Date"].tap()
        app.textFields["Date"].typeText("01.01.20")
        
        app.textFields["Address"].tap()
        app.textFields["Address"].typeText("Екатеринбург")
        
        app.textFields["Description"].tap()
        app.textFields["Description"].typeText("Baz")
        
        XCTAssertFalse(app.isOnMainView)
        
        app.buttons["Save"].tap()
        
        XCTAssertTrue(app.tables.staticTexts["Foo"].exists)
        XCTAssertTrue(app.tables.staticTexts["Bar"].exists)
        XCTAssertTrue(app.tables.staticTexts["01.01.20"].exists)
    }
    
    func testWhenCellIsSwipedLeftDoneButtonAppeared() {
        let app = XCUIApplication()
        
        XCTAssertTrue(app.isOnMainView)
        
        app.navigationBars["ToDoApp.TaskListView"].buttons["Add"].tap()
        
        app.textFields["Title"].tap()
        app.textFields["Title"].typeText("Foo")
        
        app.textFields["Location"].tap()
        app.textFields["Location"].typeText("Bar")
        
        app.textFields["Date"].tap()
        app.textFields["Date"].typeText("01.01.20")
        
        app.textFields["Address"].tap()
        app.textFields["Address"].typeText("Екатеринбург")
        
        app.textFields["Description"].tap()
        app.textFields["Description"].typeText("Baz")
        
        XCTAssertFalse(app.isOnMainView)
        
        app.buttons["Save"].tap()
        
        XCTAssertTrue(app.isOnMainView)
        
        let tablesQuery = app.tables.cells
        tablesQuery.element(boundBy: 0).swipeLeft()
        tablesQuery.element(boundBy: 0).buttons["Done"].tap()
        
        XCTAssertEqual(app.staticTexts.element(matching: .any, identifier: "date").label, "")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension XCUIApplication {
    var isOnMainView: Bool {
        return otherElements["mainView"].exists
    }
}

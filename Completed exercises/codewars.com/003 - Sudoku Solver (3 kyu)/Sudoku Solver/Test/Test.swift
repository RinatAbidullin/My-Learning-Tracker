//
//  Test.swift
//  Test
//
//  Created by Rinat Abidullin on 03.01.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest

class Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //-----------
    func testCreateForecastFromPuzzle() {
        let puzzle1 = [
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0]
        ]
        
        let allDigit: Set = [1,2,3,4,5,6,7,8,9]
        let forecast1 = [
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit]
        ]
        
        //print(createForecastFrom(puzzle: puzzle1))
        
        XCTAssertEqual(createForecastFrom(puzzle: puzzle1), forecast1)
        
        let puzzle2 = [
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,1,0]
        ]
        
        let from2to9: Set = [2,3,4,5,6,7,8,9]
        let only___1: Set = [1]
        let forecast2 = [
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,from2to9,from2to9],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,from2to9,from2to9],
        [from2to9,from2to9,from2to9,from2to9,from2to9,from2to9,from2to9,only___1,from2to9]
        ]
        
        XCTAssertEqual(createForecastFrom(puzzle: puzzle2), forecast2)
        
        let puzzle3 = [
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1],
        [1,1,1,1,1,1,1,1,1]
        ]
        
        let forecast3 = [
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1],
        [only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1,only___1]
        ]
        
        XCTAssertEqual(createForecastFrom(puzzle: puzzle3), forecast3)
    }

    func testInaccessibleDigitsForCell() {
        let puzzle = [
        [5,3,0,0,7,0,0,0,0],
        [6,0,0,1,9,5,0,0,0],
        [0,9,8,0,0,0,0,6,0],
        [8,0,0,0,6,0,0,0,3],
        [4,0,0,8,0,3,0,0,1],
        [7,0,0,0,2,0,0,0,6],
        [0,6,0,0,0,0,2,8,0], //<-
        [0,0,0,4,1,9,0,0,5],
        [0,0,0,0,8,0,0,7,9]
        ]//      |
        
        let cellCoord = CellCoordinate(i:6, j:4)
        let inaccessibleDigits: Set = [1,2,4,6,7,8,9]
        
        //print(inaccessibleDigitsForCell(withCoordinate: cellCoord, inPuzzle: puzzle))
        
        XCTAssertEqual(inaccessibleDigitsForCell(withCoordinate: cellCoord, inPuzzle: puzzle), inaccessibleDigits)
        
        let puzzle2 = [
        [5,3,0,0,7,0,0,0,0],
        [6,0,0,1,9,5,0,0,0],
        [0,9,8,0,0,0,0,6,0],
        [8,0,0,0,6,0,0,0,3],//<-
        [4,0,0,8,0,3,0,0,1],
        [7,0,0,0,2,0,0,0,6],
        [0,6,0,0,0,0,2,8,0],
        [0,0,0,4,1,9,0,0,5],
        [0,0,0,0,8,0,0,7,9]]
      // |
        
        let cellCoord2 = CellCoordinate(i:3, j:0)
        let inaccessibleDigits2: Set = [1,2,3,4,5,6,7,9]
        
        XCTAssertEqual(inaccessibleDigitsForCell(withCoordinate: cellCoord2, inPuzzle: puzzle2), inaccessibleDigits2)
    }
    
    func testConvertForecastToPuzzle() {
        let allDigit: Set = [1,2,3,4,5,6,7,8,9]
        let from2to9: Set = [2,3,4,5,6,7,8,9]
        let only___1: Set = [1]
        let forecast2: Forecast = [
        [allDigit,     [2],allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,     [5],allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,allDigit],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,from2to9,from2to9],
        [allDigit,allDigit,allDigit,allDigit,allDigit,allDigit,from2to9,from2to9,from2to9],
        [from2to9,from2to9,from2to9,from2to9,from2to9,from2to9,from2to9,only___1,from2to9]
        ]
        
        let puzzle2 = [
        [0,2,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,5,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,1,0]
        ]
        
        XCTAssertEqual(convertForecastToPuzzle(forecast: forecast2), puzzle2)
    }
    
    func testIsForecastComeSolution() {
        let forecastSolved: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6]],
        [[1],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        XCTAssertTrue(isForecastComeSolution(forecast: forecastSolved))
        
        let forecastNotSolved: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6,3]],
        [[1],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        XCTAssertFalse(isForecastComeSolution(forecast: forecastNotSolved))
    }
    
    func testForecastCanBeSolved() {
        let forecast: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6,2,4]],
        [[1,2,3],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        XCTAssertTrue(forecastCanBeSolved(forecast: forecast))
        
        let forecastWithNil: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6,2,4]],
        [[1,2,3],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],nil,[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        XCTAssertFalse(forecastCanBeSolved(forecast: forecastWithNil))
        
        let forecastWithEmpty: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6,2,4]],
        [[1,2,3],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        XCTAssertFalse(forecastCanBeSolved(forecast: forecastWithEmpty))
    }
    
    func testFindCellWithMinForecast() {
        let forecast: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6,2,4]],
        [[1,2,3],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8,5,7,8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3,4],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        
        let cellWithMinForecast = CellCoordinate(i:4, j:3)
        
        XCTAssertEqual(findCellWithMinForecast(forecast: forecast)!.i, cellWithMinForecast.i)
        XCTAssertEqual(findCellWithMinForecast(forecast: forecast)!.j, cellWithMinForecast.j)
        
        let forecastSolved: Forecast = [
        [[7],[9],[2],[1],[3],[5],[4],[8],[6]],
        [[1],[5],[4],[9],[8],[6],[2],[3],[7]],
        [[3],[6],[8],[2],[4],[7],[1],[5],[9]],
        [[4],[1],[5],[8],[7],[2],[9],[6],[3]],
        [[8],[7],[9],[3],[6],[1],[5],[4],[2]],
        [[2],[3],[6],[4],[5],[9],[7],[1],[8]],
        [[9],[2],[7],[6],[1],[3],[8],[4],[5]],
        [[6],[8],[1],[5],[9],[4],[3],[7],[2]],
        [[5],[4],[3],[7],[2],[8],[6],[9],[1]],
        ]
        XCTAssertNil(findCellWithMinForecast(forecast: forecastSolved))
    }
    
    func testDoesSudokuMeetTheRules() {
        let solution = [
        [5,3,4,6,7,8,9,1,2],
        [6,7,2,1,9,5,3,4,8],
        [1,9,8,3,4,2,5,6,7],
        [8,5,9,7,6,1,4,2,3],
        [4,2,6,8,5,3,7,9,1],
        [7,1,3,9,2,4,8,5,6],
        [9,6,1,5,3,7,2,8,4],
        [2,8,7,4,1,9,6,3,5],
        [3,4,5,2,8,6,1,7,9]]
        
        XCTAssertTrue(doesSudokuMeetTheRules(solvedPuzzle: solution))
        
        let notSolution = [
        [5,3,4,6,7,8,9,1,2],
        [6,7,2,1,9,5,3,4,8],
        [1,9,8,3,4,2,5,6,7],
        [8,5,9,7,6,1,4,5,3],
        [4,2,6,8,5,3,7,9,1],
        [7,1,3,9,2,4,8,5,6],
        [9,6,1,5,3,7,2,8,4],
        [2,8,7,4,1,9,6,3,5],
        [3,4,5,2,8,6,1,7,9]]
        
        XCTAssertFalse(doesSudokuMeetTheRules(solvedPuzzle: notSolution))
    }
    
    func testSudokuSolver() {
        let puzzle1 = [
        [5,3,0,0,7,0,0,0,0],
        [6,0,0,1,9,5,0,0,0],
        [0,9,8,0,0,0,0,6,0],
        [8,0,0,0,6,0,0,0,3],
        [4,0,0,8,0,3,0,0,1],
        [7,0,0,0,2,0,0,0,6],
        [0,6,0,0,0,0,2,8,0],
        [0,0,0,4,1,9,0,0,5],
        [0,0,0,0,8,0,0,7,9]
        ]
        
        let solution1 = [
        [5,3,4,6,7,8,9,1,2],
        [6,7,2,1,9,5,3,4,8],
        [1,9,8,3,4,2,5,6,7],
        [8,5,9,7,6,1,4,2,3],
        [4,2,6,8,5,3,7,9,1],
        [7,1,3,9,2,4,8,5,6],
        [9,6,1,5,3,7,2,8,4],
        [2,8,7,4,1,9,6,3,5],
        [3,4,5,2,8,6,1,7,9]
        ]
        
        XCTAssertEqual(sudokuSolver(puzzle: puzzle1)!, solution1)
        
        let puzzle2 = [
        [0,8,0,7,0,1,0,3,0],
        [4,0,9,0,0,0,0,0,0],
        [0,5,0,0,6,0,4,1,8],
        [7,0,0,0,0,9,0,0,0],
        [8,0,0,6,1,0,5,0,0],
        [0,3,5,0,0,0,0,2,9],
        [0,6,0,4,0,7,0,9,0],
        [1,0,0,0,0,8,0,0,4],
        [0,2,0,0,5,0,0,7,0]
        ]
        
        let solution2 = [
        [2,8,6,7,4,1,9,3,5],
        [4,1,9,3,8,5,7,6,2],
        [3,5,7,9,6,2,4,1,8],
        [7,4,1,5,2,9,3,8,6],
        [8,9,2,6,1,3,5,4,7],
        [6,3,5,8,7,4,1,2,9],
        [5,6,8,4,3,7,2,9,1],
        [1,7,3,2,9,8,6,5,4],
        [9,2,4,1,5,6,8,7,3]
        ]
        
        XCTAssertEqual(sudokuSolver(puzzle: puzzle2)!, solution2)
    }
}

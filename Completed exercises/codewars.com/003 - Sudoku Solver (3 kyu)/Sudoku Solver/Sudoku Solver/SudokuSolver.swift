//
//  SudokuSolver.swift
//  Sudoku Solver
//
//  Created by Rinat Abidullin on 03.01.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

typealias Forecast = [[Set<Int>?]]
typealias Puzzle = [[Int]]
typealias CellCoordinate = (i: Int, j: Int)

//return the solved puzzle as a 2d array of 9 x 9
func sudokuSolver(puzzle: Puzzle) -> Puzzle?  {
    let forecast = createForecastFrom(puzzle: puzzle)
    if forecastCanBeSolved(forecast: forecast) {
        if isForecastComeSolution(forecast: forecast) {
            let possibleSolution = convertForecastToPuzzle(forecast: forecast)
            if doesSudokuMeetTheRules(solvedPuzzle: possibleSolution) {
                return possibleSolution
            } else {
                return nil
            }
        } else {
            //
            if let cellCoord = findCellWithMinForecast(forecast: forecast) {
                if let forecastForOneCell = forecast[cellCoord.i][cellCoord.j] {
                    for oneDidit in forecastForOneCell {
                        var newForecast = forecast
                        newForecast[cellCoord.i][cellCoord.j] = [oneDidit]
                        if isForecastComeSolution(forecast: newForecast) {
                            return convertForecastToPuzzle(forecast: newForecast)
                        } else {
                            if let newPuzzle = sudokuSolver(puzzle: convertForecastToPuzzle(forecast: newForecast)) {
                                
                                return newPuzzle
                            } else {
                                continue
                            }
                        }
                    }
                } else {
                    return nil
                }
            } else {
                return nil
            }
        }
    } else {
        return nil
    }
    return nil
}

//Создать предсказание из паззла
func createForecastFrom(puzzle: Puzzle) -> Forecast {
    //var forecast = Array<Int>(repeating: Array<Int>(repeating: nil, count: 9), count: 9)
    //var forecast = Array(repeating: Array(repeating: nil, count: 9), count: 9)
    var forecast = Forecast()
    for i in 0...8 {
        forecast.append([])
        for j in 0...8 {
            forecast[i].append(nil)
        }
    }
    
    let allDigits: Set = [1,2,3,4,5,6,7,8,9]
    for i in 0...8 {
        for j in 0...8 {
            if puzzle[i][j] != 0 {
                forecast[i][j] = [ puzzle[i][j] ]
            } else {
                forecast[i][j] = allDigits.subtracting(inaccessibleDigitsForCell(withCoordinate: CellCoordinate(i: i, j: j), inPuzzle: puzzle))
            }
        }
    }
    return forecast
}

// Возвращает наборы занятых цифр из строки, столбца и сегмента
// т.е. цифры, которые нельзя использовать в ячейке по переданным координатам
func inaccessibleDigitsForCell(withCoordinate cellCoordinate: CellCoordinate, inPuzzle puzzle: Puzzle) -> Set<Int> {
    var inaccessibleDigits = Set<Int>()
    
    let currentCellValue: Set = [ puzzle[cellCoordinate.i][cellCoordinate.j] ]
    if currentCellValue.first != 0 {
        let allDigits: Set = [1,2,3,4,5,6,7,8,9]
        return allDigits.subtracting(currentCellValue)
    }
    
    for i in 0...8 {
        inaccessibleDigits.insert(puzzle[i][cellCoordinate.j])
    }
    for j in 0...8 {
        inaccessibleDigits.insert(puzzle[cellCoordinate.i][j])
    }
    
    let iStartSegment = (cellCoordinate.i / 3) * 3
    let jStartSegment = (cellCoordinate.j / 3) * 3
    
    for i in (iStartSegment...iStartSegment + 2) {
        for j in (jStartSegment...jStartSegment + 2) {
            inaccessibleDigits.insert(puzzle[i][j])
        }
    }
    
    inaccessibleDigits = inaccessibleDigits.subtracting([ puzzle[cellCoordinate.i][cellCoordinate.j], 0 ])
    return inaccessibleDigits
}

//
func convertForecastToPuzzle(forecast: Forecast) -> Puzzle {
    var puzzle = Puzzle()
    for i in 0...8 {
        puzzle.append([])
        for j in 0...8 {
            puzzle[i].append(0)
        }
    }
    
    for i in 0...8 {
        for j in 0...8 {
            if let forecastForOneCell = forecast[i][j] {
                if forecastForOneCell.count == 1 {
                    puzzle[i][j] = forecastForOneCell.first!
                }
                else {
                    puzzle[i][j] = 0
                }
            } else {
                puzzle[i][j] = 0
            }
        }
    }
    return puzzle
}

// Обновить предсказание в соответствии с правилами
//func updateForecastAccordingWihtRules(forecast: Forecast) -> Forecast {
//    let newPuzzle = convertForecastToPuzzle(forecast: forecast)
//    return createForecastFrom(puzzle: newPuzzle)
//}

// Проверка, найдено ли решение
func isForecastComeSolution(forecast: Forecast) -> Bool {
    for i in 0...8 {
        for j in 0...8 {
            if let forecastForOneCell = forecast[i][j] {
                if forecastForOneCell.count != 1 {
                    return false
                }
            }
            else {
                return false
            }
        }
    }
    return true
}

// Поиск ячейки с минимальным предсказанием
func findCellWithMinForecast(forecast: Forecast) -> CellCoordinate? {
    var wantedCellCoordinate: CellCoordinate?
    var currentMinForecastCount = 100
    for i in (0...8) {
        for j in (0...8) {
            if let forecastForOneCell = forecast[i][j] {
                if forecastForOneCell.count >= 2 && forecastForOneCell.count < currentMinForecastCount {
                    currentMinForecastCount = forecastForOneCell.count
                    wantedCellCoordinate = CellCoordinate(i: i, j: j)
                }
            } else {
                return nil
            }
        }
    }
    if currentMinForecastCount > 1 && currentMinForecastCount <= 9 {
        return wantedCellCoordinate
    } else {
        return nil
    }
}

// Проверяем, может ли предсказание быть вообще решено
func forecastCanBeSolved(forecast: Forecast) -> Bool {
    for i in (0...8) {
        for j in (0...8) {
            guard forecast[i][j] != nil else {
                return false
            }
            if forecast[i][j]!.isEmpty {
                return false
            }
        }
    }
    return true
}

func doesSudokuMeetTheRules(solvedPuzzle: Puzzle) -> Bool {
    let allDigits: Set = [1,2,3,4,5,6,7,8,9]
    
    for i in (0...8) {
        var digitsInRow: Set<Int> = []
        var digitsInColumn: Set<Int> = []
        for j in (0...8) {
            digitsInRow.insert(solvedPuzzle[i][j])
            digitsInColumn.insert(solvedPuzzle[j][i])
        }
        if !allDigits.subtracting(digitsInRow).isEmpty || !allDigits.subtracting(digitsInColumn).isEmpty {
            return false
        }
    }
    
    return true
}

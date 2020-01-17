//
//  main.swift
//  Sudoku Solver
//
//  Created by Rinat Abidullin on 02.01.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

let puzzle = [
[5,3,0,0,7,0,0,0,0],
[6,0,0,1,9,5,0,0,0],
[0,9,8,0,0,0,0,6,0],
[8,0,0,0,6,0,0,0,3],
[4,0,0,8,0,3,0,0,1],
[7,0,0,0,2,0,0,0,6],
[0,6,0,0,0,0,2,8,0],
[0,0,0,4,1,9,0,0,5],
[0,0,0,0,8,0,0,7,9]];

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

let hardPuzzle = [
[0,0,5,3,0,0,0,0,0],
[8,0,0,0,0,0,0,2,0],
[0,7,0,0,1,0,5,0,0],
[4,0,0,0,0,5,3,0,0],
[0,1,0,0,7,0,0,0,6],
[0,0,3,2,0,0,0,8,0],
[0,6,0,5,0,0,0,0,9],
[0,0,4,0,0,0,0,3,0],
[0,0,0,0,0,9,7,0,0]
]

let emptyPuzzle = [
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

print("Puzzle: \n")
printSudoku(puzzle: emptyPuzzle)
print("\n\nSolution: \n")
printSudoku(puzzle: sudokuSolver(puzzle: emptyPuzzle)!)

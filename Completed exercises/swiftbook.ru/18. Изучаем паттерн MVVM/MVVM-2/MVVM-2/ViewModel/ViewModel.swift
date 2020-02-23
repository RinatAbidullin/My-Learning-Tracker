//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Rinat Abidullin on 23.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)
    ]
}

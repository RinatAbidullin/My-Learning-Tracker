//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Rinat Abidullin on 24.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}

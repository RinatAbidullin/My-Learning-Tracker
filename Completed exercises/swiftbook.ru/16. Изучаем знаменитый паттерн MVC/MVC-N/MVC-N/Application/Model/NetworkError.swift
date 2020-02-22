//
//  NetworkError.swift
//  MVC-N
//
//  Created by Rinat Abidullin on 22.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}

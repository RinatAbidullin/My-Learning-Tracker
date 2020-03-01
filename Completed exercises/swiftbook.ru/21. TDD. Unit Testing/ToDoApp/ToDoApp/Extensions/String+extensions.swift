//
//  String+extensions.swift
//  ToDoApp
//
//  Created by Rinat Abidullin on 01.03.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

extension String {
    
    var percentEncoded: String {
        let allowedCharacters = CharacterSet(charactersIn: "~!@#$%^&*()-+=[]\\{},./<>").inverted
        guard let encodedString = self.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else {
            fatalError()
        }
        return encodedString
    }
}

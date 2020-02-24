//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Rinat Abidullin on 24.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) year old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}

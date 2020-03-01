//
//  ViewController.swift
//  Geocoder
//
//  Created by Rinat Abidullin on 01.03.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString("Екатеринбург") { (placemarks, error) in
            let placemark = placemarks?.first
            
            let latitude = placemark?.location?.coordinate.latitude
            let longitude = placemark?.location?.coordinate.longitude
            
            print(latitude, longitude)
        }
    }
}


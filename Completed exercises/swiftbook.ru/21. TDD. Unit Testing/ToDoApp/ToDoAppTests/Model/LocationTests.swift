//
//  LocationTests.swift
//  ToDoAppTests
//
//  Created by Rinat Abidullin on 26.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDoApp

class LocationTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }
    
    func testInitSetsName() {
        let location = Location(name: "Foo")
        
        XCTAssertEqual(location.name, "Foo")
    }
    
    func testInitSetsCoordinates() {
        
        let coordinate = CLLocationCoordinate2D(
            latitude: 1,
            longitude: 2
        )
        
        let location = Location(name: "Foo",
                                coordinate: coordinate)
        
        XCTAssertEqual(location.coordinate?.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate?.longitude, coordinate.longitude)
    }
}

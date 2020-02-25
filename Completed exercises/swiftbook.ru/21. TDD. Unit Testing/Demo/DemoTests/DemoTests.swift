//
//  DemoTests.swift
//  DemoTests
//
//  Created by Rinat Abidullin on 25.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import XCTest
@testable import Demo

class DemoTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        sut = ViewController()
    }

    override func tearDown() {
        
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        sut.setVolume(value: -100)
        let volume = sut.volume
        
        XCTAssert(volume == 0, "Lowest value shoud be equal 0")
    }
    
    func testHighestVolumeShouldBeZero() {
        sut.setVolume(value: 200)
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Highest value shoud be equal 100")
    }
    
    func testCharsInStringAreTheSame() {
        //given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        //then
        XCTAssert(bool, "Characters should be the same in two string")
    }
    
    func testCharsInStringAreTheDifferent() {
        //given
        let string1 = "qwerty1"
        let string2 = "ytrewq"
        
        //when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        //then
        XCTAssert(!bool, "Characters should be the different in two string")
    }
}

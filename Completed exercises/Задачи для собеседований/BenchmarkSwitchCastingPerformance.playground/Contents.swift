import Foundation
import XCTest

class MyTests: XCTestCase {
    let max = 50
    
    func testCast1() {
        measure {
            for _ in 0...max {
                cast1()
            }
        }
    }
    
    func testCast2() {
        measure {
            for _ in 0...max {
                cast2()
            }
        }
    }
    
    func testEnum() {
        measure {
            for _ in 0...max {
                castEnum()
            }
        }
    }
    
    func testFor() {
        measure {
            for _ in 0...max {
                castFor()
            }
        }
    }
}

MyTests.defaultTestSuite.run()

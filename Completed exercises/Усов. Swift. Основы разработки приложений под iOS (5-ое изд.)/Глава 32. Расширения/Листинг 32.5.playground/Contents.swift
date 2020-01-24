import Foundation
import XCTest

extension Int {
    subscript(digitIndex: Int) -> Int? {
        let base = Int(pow(Double(10), Double(digitIndex)))
        if self >= base {
            return (self / base ) % 10
        } else {
            return nil
        }
    }
}

72487624[0] //4
8457657[1] //5
789123454[8] //7
100[2] //1
874[3] //nil

type(of: 72487624[0])


class DigitForIndexTests: XCTestCase {
    func testRgb() {
        XCTAssertEqual(72487624[0], 4)
        XCTAssertEqual(8457657[1], 5)
        XCTAssertEqual(789123454[8], 7)
        XCTAssertEqual(100[2], 1)
        XCTAssertEqual(874[3], nil)
    }
}

DigitForIndexTests.defaultTestSuite.run()

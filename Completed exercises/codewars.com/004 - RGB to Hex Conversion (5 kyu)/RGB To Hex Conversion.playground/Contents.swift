import Cocoa
import XCTest

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    let rValid = roundToClosestValidValue(r)
    let gValid = roundToClosestValidValue(g)
    let bValid = roundToClosestValidValue(b)
    return rgbComponentToHex(rValid) + rgbComponentToHex(gValid) + rgbComponentToHex(bValid)
}

func roundToClosestValidValue(_ value: Int) -> Int {
    if value < 0 {
        return 0
    } else if value > 255 {
        return 255
    } else {
        return value
    }
}

func rgbComponentToHex(_ component: Int) -> String {
    var hex = decToHex(component)
    if hex.count < 2 {
        hex = "0\(hex)"
    }
    return hex
}

func decToHex(_ dec: Int) -> String {
    var dividend = dec
    var integerPartOfDivision: Int
    var remainder: Int
    var hex = String()
    var hexSymbol = String()
    while true {
        integerPartOfDivision = dividend / 16
        remainder = dividend % 16
        dividend = integerPartOfDivision
        
        switch remainder {
        case 0...9:
            hexSymbol = String(remainder)
        case 10:
            hexSymbol = "A"
        case 11:
            hexSymbol = "B"
        case 12:
            hexSymbol = "C"
        case 13:
            hexSymbol = "D"
        case 14:
            hexSymbol = "E"
        case 15:
            hexSymbol = "F"
        default:
            break
        }
        
        hex = "\(hexSymbol)\(hex)"
        
        if integerPartOfDivision != 0 {
            continue
        } else {
            break
        }
    }
    return hex
}

class RGBTests: XCTestCase {
    func testRgb() {
        XCTAssertEqual("FFFFFF", rgb(255,255,255))
        XCTAssertEqual("FFFFFF", rgb(255,255,300))
        XCTAssertEqual("000000", rgb(0,0,0))
        XCTAssertEqual("9400D3", rgb(148,0,211))
        XCTAssertEqual("9400D3", rgb(148,-20,211))
        XCTAssertEqual("90C3D4", rgb(144,195,212))
        XCTAssertEqual("D4350C", rgb(212,53,12))
    }
}

RGBTests.defaultTestSuite.run()

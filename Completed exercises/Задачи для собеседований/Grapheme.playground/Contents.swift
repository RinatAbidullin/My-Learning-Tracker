import UIKit

let someString = "e\u{301}lastic"

let graphemeCount = someString.count
let startIndex = someString.startIndex

for offset in 0..<graphemeCount {
    let index = someString.index(startIndex, offsetBy: offset)
    print(someString[index])
}

print("-------")

for unicodeScalar in someString.unicodeScalars {
    print(unicodeScalar)
}

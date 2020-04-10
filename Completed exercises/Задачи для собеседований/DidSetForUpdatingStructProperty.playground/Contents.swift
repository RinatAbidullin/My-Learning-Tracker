import UIKit

struct SomeStruct {
    let id: Int
    var name: String
}

class Test {
    var someStruct: SomeStruct {
        didSet {
            print("Struct updated with new name: \(someStruct.name)")
        }
    }
    
    init(someStruct: SomeStruct) {
        self.someStruct = someStruct
    }
    
    func update(withName name: String) {
        self.someStruct.name = name
    }
}

var someTest = Test(someStruct: SomeStruct(id: 1, name: "Smith"))
someTest.update(withName: "John")
someTest.update(withName: "Bob")

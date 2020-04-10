import UIKit

struct SomeStruct {
    let id: Int
    var name: String
}

class StructTest {
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

print("--- Struct Test ---")
let structTest = StructTest(someStruct: SomeStruct(id: 1, name: "Smith"))
structTest.update(withName: "John")
structTest.update(withName: "Bob")


class SomeClass {
    let id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class ClassTest {
    var someClass: SomeClass {
        didSet {
            print("Class updated with new name: \(someClass.name)")
        }
    }
    
    init(someClass: SomeClass) {
        self.someClass = someClass
    }
    
    func update(withName name: String) {
        self.someClass.name = name
    }
}

print("--- Class Test ---")
let classTest = ClassTest(someClass: SomeClass(id: 1, name: "Smith"))
classTest.update(withName: "John")
classTest.update(withName: "Bob")


class ArrayTest {
    var someArray: [Int] {
        didSet {
            print("Array updated")
        }
    }
    
    init(someArray: [Int]) {
        self.someArray = someArray
    }
    
    func append(_ newElement: Int) {
        self.someArray.append(newElement)
    }
}

print("--- Array Test ---")
let arrayTest = ArrayTest(someArray: [1, 3, 2, 7, 22])
arrayTest.append(28)

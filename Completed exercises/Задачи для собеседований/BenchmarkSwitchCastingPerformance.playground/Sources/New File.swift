import Foundation

extension Array {
    func repeated(count: Int) -> Array<Element> {
        assert(count > 0, "count must be greater than 0")
        var result = self
        for _ in 0 ..< count - 1 {
            result += self
        }
        return result
    }
}

enum Type {
    case type0
    case type1
    case type2
    case type3
    case type4
    case type5
    case type6
    case type7
    case type8
    case type9
}

protocol Typeable {
    var type: Type { get }
}

class Class0: Typeable { let type: Type = .type0 }
class Class1: Typeable { let type: Type = .type1 }
class Class2: Typeable { let type: Type = .type2 }
class Class3: Typeable { let type: Type = .type3 }
class Class4: Typeable { let type: Type = .type4 }
class Class5: Typeable { let type: Type = .type5 }
class Class6: Typeable { let type: Type = .type6 }
class Class7: Typeable { let type: Type = .type7 }
class Class8: Typeable { let type: Type = .type8 }
class Class9: Typeable { let type: Type = .type9 }

let unique: [Typeable] = [Class0(), Class1(), Class2(), Class3(), Class4(), Class5(), Class6(), Class7(), Class8(), Class9()]
    
let objects: [Typeable] = unique.repeated(count: 2000)

public func cast1() {
    for element in objects {
        switch element {
        case let element as Class0: break
        case let element as Class1: break
        case let element as Class2: break
        case let element as Class3: break
        case let element as Class4: break
        case let element as Class5: break
        case let element as Class6: break
        case let element as Class7: break
        case let element as Class8: break
        case let element as Class9: break
        default: break
        }
    }
}

public func cast2() {
    for element in objects {
        switch type(of: element) {
        case is Class0.Type: break
        case is Class1.Type: break
        case is Class2.Type: break
        case is Class3.Type: break
        case is Class4.Type: break
        case is Class5.Type: break
        case is Class6.Type: break
        case is Class7.Type: break
        case is Class8.Type: break
        case is Class9.Type: break
        default: break
        }
    }
}

public func castEnum() {
    for element in objects {
        switch element.type {
        case .type0: break
        case .type1: break
        case .type2: break
        case .type3: break
        case .type4: break
        case .type5: break
        case .type6: break
        case .type7: break
        case .type8: break
        case .type9: break
        }
    }
}

public func castFor() {
    for element in objects {
        if let _ = element as? Class0 {}
        else if let element = element as? Class1 {}
        else if let element = element as? Class2 {}
        else if let element = element as? Class3 {}
        else if let element = element as? Class4 {}
        else if let element = element as? Class5 {}
        else if let element = element as? Class6 {}
        else if let element = element as? Class7 {}
        else if let element = element as? Class8 {}
        else if let element = element as? Class9 {}
    }
}

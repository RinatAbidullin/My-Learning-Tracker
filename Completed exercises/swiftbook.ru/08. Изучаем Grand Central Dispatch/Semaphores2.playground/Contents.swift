import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class SafeArray<Element> {
    private var array = [Element]()
    private let queue = DispatchQueue(label: "DispatchBarrier", attributes: .concurrent)
    
    public func append(element: Element) {
        queue.async(flags: .barrier) {
            self.array.append(element)
        }
    }
    
    public var elements: [Element] {
        var result = [Element]()
        queue.sync {
            result = self.array
        }
        
        return result
    }
}

var safeArray = SafeArray<Int>()
DispatchQueue.concurrentPerform(iterations: 20) { (index) in
    safeArray.append(element: index)
}

print("array: \(safeArray.elements)")

var array = [Int]()
let semaphore = DispatchSemaphore(value: 1)
DispatchQueue.concurrentPerform(iterations: 20) { (index) in
    semaphore.wait()
    array.append(index)
    semaphore.signal()
}

print("array: \(array)")

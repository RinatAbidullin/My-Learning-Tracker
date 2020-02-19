import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let queue = DispatchQueue(label: "ru.swiftbook", attributes: .concurrent)

let timer = DispatchSource.makeTimerSource(queue: queue)

timer.schedule(deadline: .now(), repeating: .seconds(2), leeway: .milliseconds(50))
timer.setEventHandler {
    print("Hello World!")
}

timer.setCancelHandler {
    print("Timer is cancelled")
}

timer.resume()

DispatchQueue.global().asyncAfter(deadline: .now() + 11) {
    timer.suspend()
}

DispatchQueue.global().asyncAfter(deadline: .now() + 16) {
    timer.resume()
}

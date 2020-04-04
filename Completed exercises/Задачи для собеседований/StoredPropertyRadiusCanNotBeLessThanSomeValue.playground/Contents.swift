import Foundation

class Area {
    var radius: Int = 0 {
        willSet {
            
        }
        
        didSet {
            if radius < 3 {
                radius = 3
            }
        }
    }
}

let area = Area()
area.radius = 2 // radius = 3
area.radius = 4 // radius = 4

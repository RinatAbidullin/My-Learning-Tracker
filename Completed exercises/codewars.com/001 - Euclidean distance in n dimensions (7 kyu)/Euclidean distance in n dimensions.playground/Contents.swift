import Cocoa

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
    if point1.count == point2.count {
        var squareOfDistance: Double = 0
        for (coordinateOfFirstPoint, coordinateOfSecondPoint) in zip(point1, point2) {
            squareOfDistance += pow(coordinateOfFirstPoint - coordinateOfSecondPoint, 2)
        }
        let distance = squareOfDistance.squareRoot()
        return round(100 * distance) / 100.0
    } else {
        return 0
    }
}

euclideanDistanceBetween([1, 2, 3, 4], and: [3, 1.5, 2, 6])
euclideanDistanceBetween([-1], and: [2])

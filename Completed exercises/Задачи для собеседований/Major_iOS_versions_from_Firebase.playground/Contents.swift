import Foundation

let osVersionsRaw = """
iOS 13.6.1,891
iOS 13.7,681
iOS 14.0,487
iOS 13.5.1,195
iOS 13.6,134
iOS 12.4.8,106
iOS 13.3.1,54
iOS 13.4.1,49
iOS 14.0.1,43
iOS 13.3,25
iOS 12.4.1,19
iOS 12.2,17
iOS 11.4.1,11
iOS 13.5,11
iOS 12.4.5,10
iOS 12.4.6,10
iOS 13.4,9
iOS 10.3.4,8
iOS 12.3.1,7
iOS 12.4,7
iOS 12.4.4,7
iOS 13.1.3,7
iOS 13.2.3,7
iOS 13.1.2,6
iOS 13.2.2,6
iOS 14.2,6
iOS 10.3.3,5
iOS 12.1.4,5
iOS 12.4.7,5
iOS 11.4,4
iOS 12.1,4
iOS 13.2,4
iOS 11.2.5,2
iOS 11.3,2
iOS 12.0.1,2
iOS 12.4.2,2
iOS 13.1,2
iOS 13.1.1,2
iOS 10.0.2,1
iOS 10.1.1,1
iOS 10.2,1
iOS 10.2.1,1
iOS 11.0.3,1
iOS 11.1.1,1
iOS 11.1.2,1
iOS 12.0,1
iOS 12.1.2,1
iOS 12.3.2,1
iOS 13.0,1
"""

let lines = osVersionsRaw.components(separatedBy: "\n")

var majorOSVersions = [String: Int]()

for line in lines {
    let osComponents = line.components(separatedBy: ",")
    let osVersion = osComponents[0]
    let majorOSVersion = osVersion.components(separatedBy: ".")[0]
    let userNumber = Int(osComponents[1])!
    
    let existUserNumber = majorOSVersions[majorOSVersion] ?? 0
    
    majorOSVersions[majorOSVersion] = existUserNumber + userNumber
}

let allUsersCount = majorOSVersions.map { $0.value }.reduce(0, +)

let majorOSVersionsWithPercent = majorOSVersions.mapValues({ value in
    "\(value) users (\((Double(value) / Double(allUsersCount) * 1000).rounded() / 10.0)%)"
})

let sortedKeys = Array(majorOSVersionsWithPercent.keys).sorted(by: >)
for key in sortedKeys {
    print(key + ": " + majorOSVersionsWithPercent[key]!)
}

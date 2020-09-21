import Foundation

let osVersionsRaw = """
iOS 13.5.1,1561
iOS 13.6.1,976
iOS 13.6,900
iOS 13.7,587
iOS 14.0,239
iOS 13.4.1,182
iOS 13.3.1,164
iOS 12.4.8,118
iOS 12.4.6,83
iOS 13.5,58
iOS 13.3,47
iOS 12.4.5,42
iOS 12.4.1,32
iOS 12.4.7,30
iOS 11.4.1,22
iOS 12.2,21
iOS 12.3.1,21
iOS 12.4,20
iOS 13.1.2,17
iOS 13.4,15
iOS 10.3.3,12
iOS 13.1.3,12
iOS 10.3.4,11
iOS 13.2.2,11
iOS 12.0.1,10
iOS 13.2.3,10
iOS 12.1.4,9
iOS 12.4.4,9
iOS 11.4,7
iOS 13.0,7
iOS 13.2,6
iOS 12.1,5
iOS 11.2.5,4
iOS 11.3,4
iOS 12.1.2,4
iOS 12.3,4
iOS 13.1,4
iOS 10.3.2,3
iOS 12.4.2,3
iOS 10.2,2
iOS 11.0.3,2
iOS 11.1.1,2
iOS 12.0,2
iOS 13.1.1,2
iOS 10.0.2,1
iOS 10.1.1,1
iOS 10.2.1,1
iOS 10.3.1,1
iOS 11.1.2,1
iOS 11.2,1
iOS 11.2.1,1
iOS 11.2.6,1
iOS 11.3.1,1
iOS 12.3.2,1
iOS 12.4.3,1
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

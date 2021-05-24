import Foundation

let osVersionsRaw = """
Android 10,4094
iOS 14.4.2,1815
iOS 14.4,1716
Android 9,1309
Android 11,1135
iOS 14.4.1,1031
Android 8.0.0,459
Android 8.1.0,345
iOS 14.5.1,295
iOS 14.5,284
Android 7.0,252
iOS 14.3,245
Android 7.1.2,161
Android 7.1.1,154
iOS 14.2,138
iOS 12.5.1,105
iOS 12.5.2,81
Android 6.0.1,79
iOS 14.0.1,75
Android 6.0,70
Android 5.1.1,56
iOS 13.7,56
iOS 13.5.1,51
iOS 14.1,49
Android 5.1,44
Android 4.4.2,31
iOS 13.3.1,31
iOS 13.6.1,29
iOS 14.0,28
iOS 13.6,25
iOS 13.3,24
iOS 13.4.1,20
iOS 11.4.1,17
iOS 14.6,15
iOS 12.4.1,14
iOS 12.4.8,11
Android 5.0.2,10
iOS 13.5,10
iOS 10.3.4,9
iOS 14.2.1,9
iOS 12.4.9,8
iOS 11.4,7
iOS 12.1,7
iOS 12.1.2,7
iOS 12.4,6
iOS 12.4.5,6
iOS 12.5.3,6
Android 4.1.2,5
Android 4.3,5
iOS 10.3.3,5
iOS 12.2,5
iOS 13.1.2,5
iOS 13.1.3,5
iOS 13.2.3,5
Android 10.0,4
Android 9.0,4
iOS 12.1.4,4
iOS 12.3.1,4
iOS 12.4.2,4
iOS 11.2.5,3
iOS 11.3,3
iOS 12.4.6,3
iOS 13.0,3
iOS 13.2.2,3
Android 4.4.4,2
Android 5.0.1,2
iOS 10.2.1,2
iOS 12.0.1,2
iOS 12.1.1,2
iOS 12.4.7,2
iOS 13.2,2
Android 4.2.2,1
Android 5.0,1
iOS 10.0.2,1
iOS 10.2,1
iOS 11.1.2,1
iOS 11.3.1,1
iOS 12.0,1
iOS 12.3.2,1
iOS 12.5,1
iOS 13.1,1
iOS 13.1.1,1
iOS 13.4,1
iOS 9.3.6,1
"""

class OsVersion {
    let platform: String
    let majorVersion: Int
    var userCount: Int
    
    init(platform: String, majorVersion: Int, userCount: Int) {
        self.platform = platform
        self.majorVersion = majorVersion
        self.userCount = userCount
    }
}

var osVersions = [OsVersion]()

let lines = osVersionsRaw.components(separatedBy: "\n")

for line in lines {
    // iOS 12.3.2, 1
    // Android 4.2.2, 1
    let osComponents = line.components(separatedBy: ",") // iOS 12.3.2, 1
    let osNameWithVersion = osComponents[0] // iOS 12.3.2
    let userCount = Int(osComponents[1])! // 1
    
    let osNameWithVersionComponents = osNameWithVersion.components(separatedBy: " ") // iOS 12.3.2
    let osName = osNameWithVersionComponents[0] // iOS
    let osVersion = osNameWithVersionComponents[1] // 12.3.2

    let osVersionComponents = osVersion.components(separatedBy: ".") // 12.3.2
    let osVersionMajor = Int(osVersionComponents[0])! // 12
    
    if let existedOsVersion = osVersions.filter(
        { $0.platform == osName && $0.majorVersion == osVersionMajor }
    ).first {
        existedOsVersion.userCount += userCount
    } else {
        osVersions.append(OsVersion(platform: osName, majorVersion: osVersionMajor, userCount: userCount))
    }
}

func printOsVersion() {
    let allUsersCount = osVersions
        .map { $0.userCount }.reduce(0, +)
    let iosUsersCount = osVersions
        .filter({ $0.platform == "iOS" })
        .map { $0.userCount }.reduce(0, +)
    let androidUsersCount = osVersions
        .filter({ $0.platform == "Android" })
        .map { $0.userCount }.reduce(0, +)
    
    let sortedOsVersions = osVersions.sorted {
        if $0.platform != $1.platform {
            return $0.platform > $1.platform
        } else {
            return $0.majorVersion > $1.majorVersion
        }
    }
    
    class TableRaw {
        var os: String
        var users: String
        var percentOfAllUsers: String
        var percentOfiOS: String
        var percentOfAndroid: String
        
        init(
            os: String,
            users: String,
            percentOfAllUsers: String,
            percentOfiOS: String,
            percentOfAndroid: String
        ) {
            self.os = os
            self.users = users
            self.percentOfAllUsers = percentOfAllUsers
            self.percentOfiOS = percentOfiOS
            self.percentOfAndroid = percentOfAndroid
        }
        
        var description: String {
            return "\(os)"
        }
    }
    
    var table = [TableRaw]()
    table.append(TableRaw(
        os: "OS Version",
        users: "Users",
        percentOfAllUsers: "% of all users",
        percentOfiOS: "% of iOS",
        percentOfAndroid: "% of Android"
    ))
    
    for osVersion in sortedOsVersions {
        let percentOfAllUsers = ((Double(osVersion.userCount) / Double(allUsersCount) * 1000).rounded() / 10.0)
        let percentOfiOS = osVersion.platform == "iOS" ? ((Double(osVersion.userCount) / Double(iosUsersCount) * 1000).rounded() / 10.0) : 0
        let percentOfAndroid = osVersion.platform == "Android" ?  ((Double(osVersion.userCount) / Double(androidUsersCount) * 1000).rounded() / 10.0) : 0
        
        let tableRaw = TableRaw(
            os: osVersion.platform + " " + String(osVersion.majorVersion),
            users: String(osVersion.userCount),
            percentOfAllUsers: String(percentOfAllUsers),
            percentOfiOS: percentOfiOS != 0 ? String(percentOfiOS) : "",
            percentOfAndroid: percentOfAndroid != 0 ? String(percentOfAndroid) : ""
        )
        table.append(tableRaw)
    }
    
    let maxLettersOS = table.map({ $0.os.count }).max()!
    let maxLettersUsers = table.map({ $0.users.count }).max()!
    let maxLettersPercentOfAllUsers = table.map({ $0.percentOfAllUsers.count }).max()!
    let maxLettersPercentOfiOS = table.map({ $0.percentOfiOS.count }).max()!
    let maxLettersPercentOfAndroid = table.map({ $0.percentOfAndroid.count }).max()!
    
    func addWhitespaceIfNeeded(to string: String, and maxCount: Int) -> String {
        var string = string
        if string.count < maxLettersOS {
            string.append(String(repeating: " ", count: maxCount - string.count))
        }
        return string
    }
    
    func printLine() {
        let node = "+"
        let border = "-" //"·"
//        print(String(
//            repeating: "-",//"·",
//            count: maxLettersOS + maxLettersUsers + maxLettersPercentOfAllUsers +
//                maxLettersPercentOfiOS + maxLettersPercentOfAndroid + 16
//        ))
        print(
            node + String(repeating: border, count: maxLettersOS + 2) +
            node + String(repeating: border, count: maxLettersUsers + 2) +
            node + String(repeating: border, count: maxLettersPercentOfAllUsers + 2) +
            node + String(repeating: border, count: maxLettersPercentOfiOS + 2) +
            node + String(repeating: border, count: maxLettersPercentOfAndroid + 2) +
            node
        )
    }
    
    printLine()
    for raw in table {
        let os = addWhitespaceIfNeeded(to: raw.os, and: maxLettersOS)
        let users = addWhitespaceIfNeeded(to: raw.users, and: maxLettersUsers)
        let percentAllUsers = addWhitespaceIfNeeded(to: raw.percentOfAllUsers, and: maxLettersPercentOfAllUsers)
        let percentiOSUsers = addWhitespaceIfNeeded(to: raw.percentOfiOS, and: maxLettersPercentOfiOS)
        let percentAndroidUsers = addWhitespaceIfNeeded(to: raw.percentOfAndroid, and: maxLettersPercentOfAndroid)
        print("""
            | \(os) | \(users) | \(percentAllUsers) | \(percentiOSUsers) | \(percentAndroidUsers) |
            """)
        printLine()
    }
}

printOsVersion()

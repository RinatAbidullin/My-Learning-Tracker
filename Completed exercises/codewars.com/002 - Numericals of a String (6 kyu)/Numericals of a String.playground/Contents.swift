import Cocoa

func numericals(_ str: String) -> String {
    var numberOfMatches: [Character: Int] = [:]
    var result = String()
    for char in str {
        if let number = numberOfMatches[char] {
            numberOfMatches[char] = number + 1
        } else {
            numberOfMatches[char] = 1
        }
        result += "\(numberOfMatches[char]!)"
    }
    return result
}

numericals("Hello, World!")
numericals("aaaaaaaaaaaa")

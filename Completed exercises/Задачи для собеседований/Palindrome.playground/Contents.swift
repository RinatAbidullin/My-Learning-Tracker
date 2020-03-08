import UIKit

var isPalindrome = true
let candidateString = "А роза упала на лапу Азора"

let candidateTrimmedString = candidateString.replacingOccurrences(of: " ", with: "")
let reversedTrimmedString = String(candidateTrimmedString.reversed())

let startIndex = candidateTrimmedString.startIndex
let charactersCount = candidateTrimmedString.count

for i in 0..<charactersCount {
    let indexFromOriginalString = candidateTrimmedString.index(startIndex, offsetBy: i)
    let indexFromReversedString = reversedTrimmedString.index(startIndex, offsetBy: i)
    
    let charFromOriginalString = candidateTrimmedString[indexFromOriginalString].lowercased()
    let charFromReversedString = reversedTrimmedString[indexFromReversedString].lowercased()
    
    if charFromOriginalString != charFromReversedString {
        isPalindrome = false
    }
}

let result = isPalindrome ? "Это палиндром" : "Это не палиндром"
print(result)

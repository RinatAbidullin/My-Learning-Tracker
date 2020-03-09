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
print(candidateString + " - " + result)

//----------------

var isPalindrome2 = true
let candidateString2 = "А роза упала на лапу Азора"

let candidateTrimmedString2 = candidateString2.replacingOccurrences(of: " ", with: "")
let reversedTrimmedString2 = String(candidateTrimmedString2.reversed())

for (charFromOriginalString, charFromReversedString) in zip(candidateTrimmedString2, reversedTrimmedString2) {
    if charFromOriginalString.lowercased() != charFromReversedString.lowercased() {
        isPalindrome2 = false
    }
}

let result2 = isPalindrome2 ? "Это палиндром" : "Это не палиндром"
print(candidateString2 + " - " + result2)

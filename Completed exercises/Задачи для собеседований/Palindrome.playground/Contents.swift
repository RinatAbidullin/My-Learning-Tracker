import UIKit

var isPalindrome = true
let candidateString = "А роза упала на лапу Азора"

let candidateTrimmedString = candidateString.replacingOccurrences(of: " ", with: "")

for (charFromOriginalString, charFromReversedString) in zip(candidateTrimmedString.unicodeScalars, String(candidateTrimmedString.reversed()).unicodeScalars) {
    
    let firstChar = Character(charFromOriginalString).lowercased()
    let secondChar = Character(charFromReversedString).lowercased()
    if firstChar != secondChar {
        isPalindrome = false
    }
}

let result = isPalindrome ? "Это палиндром" : "Это не палиндром"
print(result)

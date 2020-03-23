// getType(of: "1111144444455555")
// "Unknown"
// getType(of: "4111111111111111") // <- starts with "4"
// "Visa"

// getType(of: "341111111111111") // <- starts with 34; 15 digits
// getType(of: "371111111111111") // <- starts with 37; 15 digits
// "Amex"

// Discover <- starts with 60, 65; 16 digits
// Diners Club <- starts with 30, 36, 38; 14 digits
// MC <- starts with 5, 2; 16 digits
// JCB <- starts with 35; 16, 17, 18,19 digits

import UIKit

struct Card {
    let status: String
    
    func validate() -> String {
        if hasPrefix(prefixes: Set(["4"])) {
            return "Visa"
        } else if hasPrefix(prefixes: Set(["34", "37"])) && hasDIgitsCounts(Set([15])) {
            return "Amex"
        } else if hasPrefix(prefixes: Set(["60", "65"])) && hasDIgitsCounts(Set([16])) {
            return "Discover"
        } else if hasPrefix(prefixes: Set(["30", "36", "38"])) && hasDIgitsCounts(Set([14])) {
            return "Diners Club"
        } else if hasPrefix(prefixes: Set(["5", "2"])) && hasDIgitsCounts(Set([16])) {
            return "MC"
        } else if hasPrefix(prefixes: Set(["35"])) && hasDIgitsCounts(Set(16...19)) {
            return "JCB"
        }
        return "Unknown"
    }
    
    private func hasPrefix(prefixes: Set<String>) -> Bool {
        for prefix in prefixes {
            if status.hasPrefix(prefix) {
                return true
            }
        }
        return false
    }

    private func hasDIgitsCounts(_ counts: Set<Int>) -> Bool {
        for count in counts {
            if status.count == count {
                return true
            }
        }
        return false
    }
}

func getType(of card: String) -> String {
    let validCard = Card(status: card)
    return validCard.validate()
}

//Visa
getType(of: "4111111111111111")

//Amex
getType(of: "341111111111111")
getType(of: "371111111111111")

//Discover
getType(of: "6011111111111111")
getType(of: "6511111111111111")

//Diners Club
getType(of: "30111111111111")
getType(of: "36111111111111")
getType(of: "38111111111111")

//MC
getType(of: "5111111111111111")
getType(of: "2111111111111111")

//JCB
getType(of: "3511111111111111")
getType(of: "35111111111111111")
getType(of: "351111111111111111")
getType(of: "3511111111111111111")

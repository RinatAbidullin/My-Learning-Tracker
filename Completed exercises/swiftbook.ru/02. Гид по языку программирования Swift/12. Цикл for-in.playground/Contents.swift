import Cocoa

let stringWithUTFSymbols: String = "ŮǄǟ and ansi"
for char in stringWithUTFSymbols.unicodeScalars {
    print(char)
}

/*:
 ## Exercise: Defining Enums
 
 Get some practice defining your own enums. Remember the rules about naming enums and their cases. 
 
 - callout(Exercise): Define an enum for the compass directions: North, East, South, and West.
*/
enum CompassDirection {
    case north, east, south, west
}
//: - callout(Exercise): Define an enum for jigsaw puzzle pieces: corner, edge, and middle.
enum  JigsawPuzzlePiece {
    case corner, edge, middle
}
//: - callout(Excercise): Define an enum for the playback modes in a music app: standard, repeat, repeat all, and shuffle.
enum PlaybackMode {
    case standard
    case repeatTrack
    case repeatAll
    case shuffle
}
//: [Previous](@previous)  |  page 17 of 21  |  [Next: Exercise: Counting Chickens](@next)

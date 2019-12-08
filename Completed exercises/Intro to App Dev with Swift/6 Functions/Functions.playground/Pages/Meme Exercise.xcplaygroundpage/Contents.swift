/*:
 ## Functional Meme
 
 Think of a fun song or meme that you've heard or seen recently. Try to think of one with repetitive parts. For example:
 
 - A song with a repeated chorus.
 - A meme that repeats a word or phrase.
 - A song that repeats a line over and over.
 
 Write out the song or meme using `print` statements, then look for patterns and repetition and choose groups of lines to combine into functions. This is a free-form exercise, so you can do whatever you like.
*/
func songName() {
    print("Dabin - Rings & Roses (feat. Conor Byrne)")
}

func couplet1() {
    print("Looking up to the stars, waiting on a dream you’ve been sold")
    print("doesn’t matter who you are, anyone can make it that’s what you’re told")
    print("cause they want to go and build you up, so we can watch you fall")
    print("then they go ahead and build you up, and we all watch you fall")
}

func couplet2() {
    print("Swimming in all this fame, I can barely see who you are")
    print("Dragged down by these waves, last one hit and took you too far")
    print("cause they want to go and build you up, and take you far away")
    print("never seem to hear a lot from you, you never call these days")
}

func chorus() {
    print("all the rings and roses gone to your head")
    print("cameras and poses up there instead")
    print("i miss you, i miss you where are you now?")
    print("you know in the end that they all fall down")
}

func breather() {
    print("")
}

songName()
breather()
couplet1()
breather()
chorus()
breather()
couplet2()
breather()
chorus()
//: Next, make the meme your own.
//:
//: [Previous](@previous)  |  page 11 of 12  |  [Next: Personal Meme](@next)

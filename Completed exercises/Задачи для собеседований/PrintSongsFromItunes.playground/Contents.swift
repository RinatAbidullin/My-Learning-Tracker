import Foundation

let itunesRaw = """
Breathe in the Moment        3:26    APEK, HALIENE & Man Cub    Breathe in the Moment - Single    Танцевальная    2    6
Miracle        3:08    CHVRCHES    Love Is Dead    Альтернатива    2    5
The Mother We Share        3:11    CHVRCHES    The Bones of What You Believe    Электроника    2    15
Hope It Hurts (feat. Essenger)        4:18    Dabin    Hope It Hurts (feat. Essenger) - Single    Электроника    2    3
Fairy Tale        4:15    Ekali & Elohim    A World Away    Электроника    2    28
Heartbeats        3:16    Fairlane    Heartbeats - Single    Dance    2    21
Puzzle (feat. Claire Ridgely)        3:14    Fairlane    Puzzle (feat. Claire Ridgely) - Single    Танцевальная    2    4
Uncover You (feat. Ilsey)        3:54    Fairlane    Uncover You (feat. Ilsey) - Single    Танцевальная    2    2
Wildfire        3:37    Fairlane & Nevve    Wildfire - Single    Танцевальная    2    2
The Reason        3:01    Gill Chang    The Reason - Single    Танцевальная    2    8
Feel Something        3:41    ILLENIUM, Excision & I Prevail    Feel Something - Single    Dance    2    1
In a Dream (feat. SVRCINA)        4:26    Man Cub    In a Dream (feat. SVRCINA) - Single    Танцевальная    2    3
Home (feat. Niko Athanasatos) [Nurko Remix]        3:54    MitiS    Shattered Ep (Remixes)    Дабстеп    2    2
Shattered (feat. Runn) [Culture Code Remix]        4:18    MitiS    Shattered Ep (Remixes)    Дабстеп    2    5
Home (feat. Niko Athanasatos)        3:46    MitiS    Shattered Ep (Remixes)    Дабстеп    2    3
Wait (feat. Monika Santucci)        4:45    MitiS & Crystal Skies    Wait (feat. Monika Santucci) - Single    Дабстеп    2    2
Let It Die        3:38    Rival & Philip Strand    Let It Die - Single    Бас    2    16
(If Only I Could) Hold You        4:21    San Holo    (If Only I Could) Hold You - Single    Электроника    2    11
Riptide        3:20    Trivecta, Amidy & RØRY    Riptide - Single    Дабстеп    2    3
Skate (feat. Saint Sinner)        3:07    Tycho    Weather    Электроника    2    15
No Stress (feat. Saint Sinner)        3:50    Tycho    Weather    Электроника    2    12

"""

enum Song: Int {
    case title = 0
    case lenght = 1
    case artist = 2
    case album = 3
}

let lines = itunesRaw.components(separatedBy: "\n")

let needToPrintOrdinalSongNumber = true
var ordinalSongNumber = 0

for line in lines {
    let songComponents = line.components(separatedBy: "   ")
        .filter { !$0.isEmpty }
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    //print(songComponents)
    if songComponents.count > 3 {
        ordinalSongNumber += 1
        print("\(needToPrintOrdinalSongNumber ? "\(ordinalSongNumber). " : "")\(songComponents[Song.artist.rawValue]) - \(songComponents[Song.title.rawValue])")
    }
}

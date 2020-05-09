import Foundation

let itunesRaw = """
Кавказское Диско        3:21    Дископровокация    Discoboy    Поп    2    1
Flames        3:15    Дэвид Гетта & Sia    Flames - Single    Танцевальная    2    26
Get Up (feat. Kiddo)        2:46    йелоу клоу    Get Up (feat. Kiddo) - Single    Танцевальная    2    5
City On Lockdown (feat. Juicy J & Lil Debbie) [Crisis Era Remix]        3:42    йелоу клоу    Los Amsterdam (The Remixes, Pt.1) - EP    Электроника    2    9
Fake Chanel (feat. A$AP Ferg & Creek Boyz)        3:03    йелоу клоу    New Blood    Танцевальная    2    7
Give It to Me        3:06    йелоу клоу & Nonsens    Give It to Me - Single    Танцевальная    2    11
Семирамида        3:49    Созвездие Отрезок    Приход    Электроника    2    5
Медуза        3:40    Созвездие Отрезок    Приход    Электроника    2    5
Тошнота        3:03    Созвездие Отрезок    Приход    Электроника    2    5
Клещ        4:31    Созвездие Отрезок    Приход    Электроника    2    4
Волосы        4:14    Созвездие Отрезок    Приход    Электроника    2    4
Мы сегодня дома        3:24    Хадн дадн    Тайный альбом    Поп    2    7
Back to Life (80s Remix)        3:14    Хейли Стейнфилд    Back to Life (From the Motion Picture "Bumblebee") - Single    Саундтреки    2    8
Problems        2:52    A R I Z O N A    Asylum    Альтернатива    2    23
Freaking Out        3:20    A R I Z O N A    COLD NIGHTS // SUMMER DAYS    Альтернатива    2    1
Nostalgic        3:03    A R I Z O N A    Nostalgic - Single    Альтернатива    2    14
Wild for the Night (feat. Skrillex & Birdy Nam Nam)        3:33    A$AP Rocky    LONG.LIVE.A$AP (Deluxe Version)    Хип-хоп    2    16
Until the End (feat. Q'AILA)        5:08    Aero Chord & Fractal    Love & Hate EP    Танцевальная    2    3
Panther        3:46    Aero Chord & TEKNiCOLOR    Panther - Single    Танцевальная    2    7
In the End (feat. Akacia)        3:12    Alex Lustig    In the End (feat. Akacia) - Single    Электроника    2    49
Deep End (feat. Makk Mikkael)        4:22    Alex Lustig    Wave003: A Glowing Mind - EP    Даунтемпо    2    8
All We Need        3:42    ALPHA 9    All We Need - Single    Транс    2    11
Azzura        4:04    ALPHA 9    Azzura - Single    Транс    2    5
Adore        3:05    Amy Shark    Love Monster    Альтернатива    2    3
I Said Hi        2:50    Amy Shark    Love Monster    Альтернатива    2    9
Mess Her Up (Single Edit)        3:26    Amy Shark    Mess Her Up - Single    Альтернатива    2    9
Down the Line (feat. Trove)        4:11    Anki    Bloom    Танцевальная    2    9
Shivers (feat. Susana) [ALPHA 9 Remix]        4:04    Armin van Buuren    Shivers (feat. Susana) [ALPHA 9 Remix] - Single    Транс    2    59
Avalanche        3:12    ARTY    Avalanche - Single    Танцевальная    2    19
Perfect Strangers        3:11    ARTY    Perfect Strangers - Single    Танцевальная    2    10
The Wall (Arty Remode Mix) (feat. Tania Zygar)        6:17    ARTY    The Wall (feat. Tania Zygar) - Single    Танцевальная    2    1
The Zero Point (feat. Holly Drummond)        5:31    Au5    The Zero Point - Single    Дабстеп    2    9
Sweet but Psycho        3:07    Ava Max    Sweet but Psycho - Single    Поп    2    14
More Than You Know        3:23    Axwell Λ Ingrosso    More Than You Know - EP    Танцевальная    2    14
People I Know (feat. Panama)        3:36    Boombox Cartel    People I Know (feat. Panama) - Single    Электроника    2    10
Drip (feat. Desiigner)        3:10    Boombox Cartel & Dillon Francis    Drip (feat. Desiigner) - Single    Танцевальная    2    8
Shake It        3:03    Cesqeaux & LNY TNZ    Barong Family: Shanghai Nights, Pt. 1    Танцевальная    2    13
Old School Sound        2:54    Cesqeaux & Wuki    Old School Sound - Single    Танцевальная    2    11
Losing Myself        2:37    Cesqeaux, Ben & Fil & Perk Pietrek    Losing Myself - Single    Электроника    2    17
Clearest Blue (Gryffin Remix) [Bonus Track]        4:19    CHVRCHES    Every Open Eye (Extended Edition)    Альтернатива    2    8
I'm God (San Holo Edit)        2:29    Clams Casino            2    13
Daddy        4:58    Coldplay    Everyday Life    Альтернатива    2    13
Miracles        3:55    Coldplay    Unbroken (Original Motion Picture Soundtrack)    Alternative    2    21
A Real Hero (feat. Electric Youth)        4:28    College & Electric Youth    Drive (Original Motion Picture Soundtrack)    Саундтреки    2    2
GLOW (Wiwek Remix)        4:01    CORSAK, Robinson & Wiwek    GLOW (Wiwek Remix) - Single    Электроника    2    10
Monster (feat. Hyro the Hero)        3:09    Crankdat & Hyro the Hero    Gearworld, Vol. 1 - EP    Электроника    2    5
Untouchable (feat. Chatta)        2:41    Crisis Era    No Filter, Vol. 1 - EP    Хаус    2    16
Shake        2:46    Crisis Era    No Filter, Vol. 2 - EP    Хаус    2    14
Crash Test (feat. Nobinh)        2:56    Crisis Era    Valor - EP    Хаус    2    12
I Can't Have Nice Things        2:59    CXLOE    I Can't Have Nice Things - Single    Поп    2    7
Rings & Roses (feat. Conor Byrne)        3:57    Dabin    Wild Youth    Электроника    2    61
Lights (feat. Trove)        4:08    Dabin    Wild Youth    Электроника    2    4
In Flames (feat. Lexi Norton)        3:25    Dabin    Wild Youth    Электроника    2    20
Bloom (feat. Dia Frampton)        4:00    Dabin    Wild Youth    Электроника    2    15
Alive (feat. RUNN)        6:05    Dabin    Wild Youth    Электроника    2    4
In Flames (feat. Lexi Norton) [Inukshuk Remix]        4:36    Dabin    Wild Youth (The Remixes)    Электроника    2    19
Home (feat. Essenger) [Mazare Remix]        3:25    Dabin    Wild Youth (The Remixes)    Электроника    2    15
Another Day (feat. Nevve)        3:02    Dabin & Inukshuk    Wild Youth    Электроника    2    6
End of the Night        3:26    Danny Avila    End of the Night - Single    Танцевальная    2    12
Welcome to the Party (feat. Zhavia Ward) [From the "Deadpool 2" Original Motion Picture Soundtrack]        3:02    Diplo, French Montana & Lil Pump    Welcome to the Party (feat. Zhavia Ward) [From the "Deadpool 2" Original Motion Picture Soundtrack] - Single    Саундтреки    2    8
Quake        3:57    Dirty Audio & Slippy    Quake - Single    Дабстеп    2    8
BREAK LAW        4:02    Dog Blood    Turn Off the Lights - EP    Электроника    2    3
Fill in the Blanks        2:59    Dr. Ozi    Fill in the Blanks - Single    Дабстеп    2    8
This Was Our House        2:01    Electric Youth    Breathing (Original Motion Picture Soundtrack)    Электроника    2
Lonely Nights        4:49    Electrosalam    Lonely Nights - Single    Электроника    2    4
Flux        3:50    Ellie Goulding    Flux - Single    Поп    2    5
My Blood        3:54    Ellie Goulding    Halcyon Days (Deluxe Version)    Поп    2    1
Close to Me        3:03    Ellie Goulding, Diplo & Swae Lee    Close to Me - Single    Поп    2    1
Only Getting Younger (feat. Skrillex)        4:16    Elliphant    Look Like You Love It    Поп    2    8
Youngblood        3:40    First to Eleven    Covers, Vol. 2    Поп    2    12
Crank up the Dank        2:56    Gammer & Stonebank    Crank up the Dank - Single    Танцевальная    2    15
Moonlight        2:53    Gaullin    Moonlight - Single    Танцевальная    2    7
Body Back (feat. Maia Wright)        3:35    Gryffin    Body Back (feat. Maia Wright) - Single    Танцевальная    2    7
Body Back (feat. Maia Wright)        3:35    Gryffin    Gravity    Танцевальная    2    4
Bye Bye (feat. Ivy Adara)        3:30    Gryffin    Gravity    Танцевальная    2    3
If I Left the World (feat. MARINA & Model Child)        3:20    Gryffin    Gravity    Электроника    2    11
Out of My Mind (feat. ZOHARA)        3:00    Gryffin    Gravity    Танцевальная    2    8
Just For a Moment (feat. Iselin)        4:13    Gryffin    Gravity    Танцевальная    2    1
You Remind Me (feat. Stanaj)        3:37    Gryffin    Gravity    Танцевальная    2    5
Nobody Compares To You (feat. Katie Pearlman)        3:51    Gryffin    Gravity    Танцевальная    2
Nobody Compares to You (feat. Katie Pearlman)        3:51    Gryffin    Gravity, Pt. 1 - EP    Танцевальная    2    4
Bye Bye (feat. Ivy Adara)        3:31    Gryffin    Gravity, Pt. 1 - EP    Танцевальная    2    16
Hurt People        3:46    Gryffin & Aloe Blacc    Gravity    Танцевальная    2
OMG        3:36    Gryffin & Carly Rae Jepsen    Gravity    Танцевальная    2    2
OMG        3:36    Gryffin & Carly Rae Jepsen    OMG - Single    Танцевальная    2    7
Nothing Like You (feat. HANA)        3:01    Gryffin & DROELOE    Gravity    Танцевальная    2    7
Tie Me Down        3:38    Gryffin & Elley Duhé    Gravity    Танцевальная    2    3
All You Need to Know (feat. Calle Lehmann)        3:58    Gryffin & SLANDER    All You Need to Know (feat. Calle Lehmann) - Single    Танцевальная    2    5
All You Need To Know (feat. Calle Lehmann)        3:58    Gryffin & SLANDER    Gravity    Танцевальная    2    2
Remember        3:41    Gryffin & ZOHARA    Gravity    Танцевальная    2    3
Baggage        3:17    Gryffin, Gorgon City & AlunaGeorge    Gravity    Танцевальная    2    1
Need Your Love        3:26    Gryffin, Seven Lions & Noah Kahan    Gravity    Танцевальная    2    8
Without Me (ILLENIUM Remix)        4:09    Halsey    Without Me (ILLENIUM Remix) - Single    Танцевальная    2    71
Hide and Seek        4:08    Holly Henry    Hide and Seek - Single    Альтернатива    2    10
Take You Down        3:41    ILLENIUM    Ascend    Танцевальная    2    2
Broken Ones        3:18    ILLENIUM & Anna Clendening    Ascend    Танцевальная    2    26
Lonely        4:31    ILLENIUM & Chandler Leighton    Ascend    Танцевальная    2    20
That’s Why        4:13    ILLENIUM & GOLDN    Ascend    Танцевальная    2    63
Good Things Fall Apart        3:37    ILLENIUM & Jon Bellion    Good Things Fall Apart - Single    Танцевальная    2    16
All Together        3:59    ILLENIUM & OEKIIN    Ascend    Танцевальная    2    20
Gorgeous        4:37    ILLENIUM, Bipolar Sunshine & Blanke    Ascend    Танцевальная    2    21
Маяки        4:44    IOWA    Маяки - Single    Поп    2    14
I.O.U. (feat. Emilie Brandt) [Edit]        3:51    Jason Ross    I.O.U. - Ep    Танцевальная    2    11
Iou        3:46    Jason Ross & Emilie Brandt    Rooms    Транс    2    15
One That Got Away (With Dylan Matthew)        3:35    Jason Ross, Dabin & Dylan Matthew    One That Got Away (With Dylan Matthew) - Single    Танцевальная    2    16
Mask (with AWAY)        3:37    josh pan    Mask (with AWAY) - Single    Электроника    2    18
Don't Know You (feat. Jake Miller)        3:11    Justin Caruso    Don't Know You (feat. Jake Miller) - Single    Танцевальная    2    7
Hollow        3:34    Kai Wachi & Famous Dex    Hollow - Single    Танцевальная    2    12
I Get You (feat. Lizzy Land)        3:58    Kasbo    I Get You (feat. Lizzy Land) - Single    Электроника    2    18
Nightcall        4:20    Kavinsky & Lovefoxxx    Drive (Original Motion Picture Soundtrack)    Саундтреки    2    5
Witch's Lesson (Wiwek Remix)        3:45    Kiwi & Wiwek    Witch's Lesson (Wiwek Remix) - Single    Танцевальная    2    11
Edit You (feat. Stela Cole)        3:09    Kream    Edit You (feat. Stela Cole) - Single    Танцевальная    2    7
Runaway        3:40    Krewella    Runaway - Single    Электроника    2    12
Carry Me Home (feat. Jake Reese)        3:11    KSHMR    Carry Me Home (feat. Jake Reese) - Single    Танцевальная    2    5
Stranger Things (feat. OneRepublic)        3:41    Kygo    Kids in Love (Re-Release)    Танцевальная    2    16
Permanent (feat. J.Hart)        3:48    Kygo    Kids in Love (Re-Release)    Танцевальная    2    16
It Ain't Me        3:41    Kygo & Селена Гомес    Stargazing - EP    Поп    2    5
First Time        3:14    Kygo & Ellie Goulding    First Time - Single    Поп    2    9
First Time        3:14    Kygo & Ellie Goulding    Stargazing - EP    Поп    2    9
Remind Me to Forget        3:37    Kygo & Miguel    Kids in Love (Re-Release)    Танцевальная    2    27
Mariners Apartment Complex        4:07    Lana Del Rey    Norman F*****g Rockwell!    Альтернатива    2    9
Another Tale from Another English Town        5:16    Lanterns on the Lake    Another Tale from Another English Town - Single    Альтернатива    2    10
Until the Colours Run        5:30    Lanterns on the Lake    Until the Colours Run    Альтернатива    2    5
Kids (with Miranda Glory)        4:21    LIONE    Kids (with Miranda Glory) - Single    Танцевальная    2    30
Revive        4:13    LIONE    Revive - Single    Танцевальная    2    13
Hard City (PART THREE) [feat. Milano The Don]        3:58    Lit Lords    Hard City Volume 3 (The Evolution) - EP    Дабстеп    2    4
No Mercy (feat. Milano The Don)        3:21    Lit Lords    No Mercy - Single    Танцевальная    2    22
Ohawu        3:19    Lit Lords    Ohawu - Single    Электроника    2    11
High Without Your Love        3:11    Loote    single.    Поп    2    3
Stay Young        3:22    Maisie Peters    Stay Young - Single    Поп    2    5
Worst of You        3:17    Maisie Peters    Worst of You - Single    Поп    2    27
Find Our Way (feat. Klei) [Night Drive Edit]        3:39    Midnight Kids    Find Our Way (feat. Klei) [Remixes] - Single    Танцевальная    2    17
Those Were the Days        3:20    Midnight Kids & Jared Lee    Those Were the Days - Single    Танцевальная    2    3
The Light        2:49    Mike Cervello    The Light - Single    Танцевальная    2    15
Lighthouse (feat. Renè Miller)        2:48    Mike Perry    Lighthouse (feat. Renè Miller) - Single    Танцевальная    2    6
Rise & Fall (feat. Cathrine Lassen)        2:38    Mike Perry    Rise & Fall (feat. Cathrine Lassen) - Single    Поп    2    5
Rocksteady (feat. DIMA)        3:16    Mike Perry    Rocksteady (feat. DIMA) - Single    Танцевальная    2    9
Away (feat. Gioto)        4:20    MitiS    'Til the End    Танцевальная    2    13
For Miles & Miles (feat. PartyNails)        3:55    MitiS    'Til the End    Танцевальная    2    32
Mercy        3:42    MitiS & glasscat    Mercy - Single    Танцевальная    2    26
Blur        3:05    MØ    Forever Neverland    Поп    2    15
Каждый раз        Непрерывно    Монеточка    Раскраски для взрослых    Тин-поп    2    6
The Dark Side        3:47    Muse    Simulation Theory (Super Deluxe)    Альтернатива    2    8
Starsigns        3:10    MYRNE    In Search of Solitude    Танцевальная    2    10
Worlds Away (feat. KARRA)        3:39    MYRNE    In Search of Solitude    Танцевальная    2    26
Trust (feat. Gioto)        3:19    Nurko & Adam Pearce    Trust (feat. Gioto) - Single    Танцевальная    2    8
Breathe Without (feat. Luma)        3:46    Nurko & Luma    Breathe Without (feat. Luma) - Single    Танцевальная    2    8
Sunrise        3:49    Our Last Night    Oak Island    Рок    2    5
Back (feat. OG Maco & Project Pat)        2:35    Party Favor    Layers    Танцевальная    2    15
RBRBRB (feat. Hex Cougar)        3:30    Party Favor    Layers    Танцевальная    2    6
Work It Out        3:57    Party Favor & Good Times Ahead    Layers    Танцевальная    2    7
Superstar (feat. Krewella)        3:25    Pegboard Nerds & NGHTMRE    Superstar (feat. Krewella) - Single    Танцевальная    2    4
Fool's Paradise        4:33    Poets of the Fall    Ultraviolet    Рок    2    11
Life Long After Death (feat. badXchannels)        3:22    QUIX & Adventure Club    Life Long After Death (feat. badXchannels) - Single    Танцевальная    2    6
Lullaby        2:40    R3HAB & Mike Williams    Lullaby - Single    Танцевальная    2    12
Without You (feat. Devin & Lydia)        3:50    Ray Volpe    All Emotion Allowed - Single    Танцевальная    2    3
Like This (feat. Gianni Marino & Lil Debbie)        2:29    RayRay    Alien Invasion - EP    Танцевальная музыка    2    37
Ninja        2:54    RayRay & Crisis Era    Purple Alien - EP    Хаус    2    8
Like That (feat. Shimica)        2:37    RayRay & Gianni Marino    Purple Alien - EP    Хаус    2    19
All The Smoke (feat. Bok Nero)        2:20    Riot Ten & Stoutty    All The Smoke (feat. Bok Nero) - Single    Хардкор    2    12
Seasons (NIVIRO Remix) [feat. Harley Bird]        4:10    Rival, Cadmium & NIVIRO    Seasons (NIVIRO Remix) [feat. Harley Bird] - Single    Танцевальная    2    12
Show & Tell (feat. Claire Ridgely)        3:06    Said The Sky    Show & Tell (feat. Claire Ridgely) - Single    Танцевальная    2    6
Change Your Mind (feat. Vancouver Sleep Clinic)        2:59    Said The Sky    Wide-Eyed    Танцевальная    2    15
All I Got        5:16    Said The Sky & Kwesi    Wide-Eyed    Танцевальная    2    1
Hero        4:09    Said The Sky, Dabin & Olivver the Kid    Hero - Single    Танцевальная    2    11
For You (Above & Beyond Edit)        5:42    Same K    For You (Above & Beyond Edit) - Single    Транс    2    2
lift me from the ground (feat. Sofie Winterson)        4:21    San Holo    album1    Электроника    2    19
surface (feat. Caspian)        6:02    San Holo    album1    Электронная музыка    2    36
Lost Lately (Pure Alternative Version)        4:03    San Holo    Lost Lately - Single    Альтернатива    2    17
One Thing        3:54    San Holo    One Thing - Single    Танцевальная    2    10
Ooh        2:28    SAYMYNAME    Ooh - Single    Танцевальная    2    16
The Most (feat. Karra)        3:43    SAYMYNAME    The Most (feat. Karra) - Single    Танцевальная    2    3
Run This (feat. DJ Paul & Crichy Crich)        2:49    SAYMYNAME & Protohype    Run This (feat. DJ Paul & Crichy Crich) - Single    Танцевальная    2    20
Free to Go        3:37    Seeb & Highasakite    Free to Go - Single    Поп    2    12
Young Yummy Love        3:21    SEREBRO & DJ Feel    Young Yummy Love - Single    Поп    2    3
Make Us Never Happen        2:52    SHY Martin    Make Us Never Happen - Single    Поп    2    7
Out of My Hands        3:23    SHY Martin    Out of My Hands - Single    Поп    2    9
Live On Rewind (feat. Jai Matt)        3:34    Soltan    Jadugar - EP    Танцевальная    2    9
Sick (feat. HU$H)        3:43    Soltan    Sick (feat. HU$H) - Single    Электроника    2    9
The Unburnt        3:36    Soltan    The Unburnt - Single    Дабстеп    2    11
Let You Down (feat. Danyka Nadeau)        4:13    Stonebank    Let You Down (feat. Danyka Nadeau) - Single    Танцевальная    2    14
Ripped to Pieces (feat. EMEL)        4:27    Stonebank    Ripped to Pieces (feat. EMEL) - Single    Танцевальная    2    14
For the Crown (feat. Mime & Born I Music)        3:34    TERRA BLVCK & DËKAY    For the Crown (feat. Mime & Born I Music) - Single    Электроника    2    45
Do You Mean (feat. Ty Dolla $ign & bülow)        3:13    The Chainsmokers    World War Joy    Танцевальная    2    15
Kills You Slowly        3:33    The Chainsmokers    World War Joy    Танцевальная    2    12
Paris        3:42    The Chainsmokers    Memories...Do Not Open    Танцевальная    2    9
Push My Luck        3:02    The Chainsmokers    World War Joy    Танцевальная    2    19
This Feeling (feat. Kelsea Ballerini)        3:18    The Chainsmokers    Sick Boy    Танцевальная    2    2
Beach House        3:26    The Chainsmokers    Sick Boy    Танцевальная    2    19
Beach House        3:26    The Chainsmokers    Sick Boy    Танцевальная    2    6
Hope (feat. Winona Oak)        3:00    The Chainsmokers    Sick Boy    Танцевальная    2    25
Side Effects (feat. Emily Warren)        2:53    The Chainsmokers    Sick Boy    Танцевальная    2    22
The Reaper (feat. Amy Shark)        3:03    The Chainsmokers    World War Joy    Танцевальная    2    20
See The Way (feat. Sabrina Claudio)        2:58    The Chainsmokers    World War Joy    Танцевальная    2    19
Push My Luck        3:02    The Chainsmokers    World War Joy    Танцевальная    2    16
Call You Mine (feat. Bebe Rexha)        3:38    The Chainsmokers    World War Joy    Танцевальная    2    11
Do You Mean (feat. Ty Dolla $ign & bülow)        3:13    The Chainsmokers    World War Joy    Танцевальная    2    13
Kills You Slowly        3:33    The Chainsmokers    World War Joy    Танцевальная    2    12
Who Do You Love        3:47    The Chainsmokers & 5 Seconds of Summer    Who Do You Love - Single    Танцевальная музыка    2    4
Who Do You Love        3:47    The Chainsmokers & 5 Seconds of Summer    World War Joy    Танцевальная    2    10
Takeaway (feat. Lennon Stella)        3:30    The Chainsmokers & ILLENIUM    Ascend    Танцевальная    2    16
Takeaway (feat. Lennon Stella)        3:30    The Chainsmokers & ILLENIUM    Ascend    Танцевальная    2    35
Takeaway (feat. Lennon Stella)        3:30    The Chainsmokers & ILLENIUM    World War Joy    Танцевальная    2    12
Family (with Kygo)        3:15    The Chainsmokers & Kygo    World War Joy    Танцевальная    2    18
America Online        5:50    The Midnight    America Online - Single    Электроника    2    5
Los Angeles        6:29    The Midnight    Days of Thunder    Электроника    2    5
Alleyways        4:28    The Neighbourhood    I Love You.    Alternative    2    24
Pocket        3:26    The Nicholas & San Holo    Gouldian Finch    Танцевальная    2    34
Turn It Up        2:58    Tobu    Turn It Up - Single    Танцевальная    2    7
What More        3:09    TOMYGONE & Amvis    What More - Single    Электроника    2    7
Infinity        6:04    Unlivian    Butterfly / Infinity - Single    Танцевальная    2    3
Lost (feat. Alice Berg)        3:36    VENIICE    Gemini - EP    Хаус    2    16
Getting Closer (feat. Danyka Nadeau)        3:06    VENIICE    Gemini - EP    Танцевальная    2    13
Let Go (feat. DYSON)        3:25    VENIICE    Gemini - EP    Хаус    2    11
Enough (feat. Karra)        3:46    VENIICE, Matthew Steeper & Zav    Gemini - EP    Танцевальная    2    10
The Surface        3:22    VENIICE, Miles Away & FJØRA    Apollo - Single    Танцевальная    2    15
Thoughts        3:26    VIBRALVX    Thoughts - Single    Поп    2    13
Космонавт        3:39    VLNY    Волны    Поп    2    24
Waiting on the Corner        3:44    Walking On Cars    Colours    Альтернатива    2    8
Somebody Else        3:30    Walking On Cars    Colours    Альтернатива    2    23
Too Emotional        3:23    Walking On Cars    Colours    Альтернатива    2    14
Two Stones        3:09    Walking On Cars    Everything This Way    Альтернатива    2    43
Ship Goes Down        3:09    Walking On Cars    Everything This Way    Альтернатива    2    62
Speeding Cars        4:02    Walking On Cars    Everything This Way    Альтернатива    2    63
Monster        3:05    Walking On Cars    Monster - Single    Альтернатива    2    6
Nothing's Impossible        4:37    Walking On Cars    Mum's List (Original Motion Picture Soundtrack)    Альтернатива    2    12
Butt is Hot        3:10    Wanna Wake    Butt is Hot - Single    Хип-хоп    2    25
Mula (feat. Dario Angelo)        2:58    Wanna Wake    Mula (feat. Dario Angelo) - Single    Хип-хоп    2    8
Friday Night        3:22    West Coast Massive    Friday Night - Single    Танцевальная    2    11
Lucky Eyes        3:54    West Coast Massive    Lucky Eyes - Single    Хаус    2    10
Choose Your Poison (feat. Foreign Beggars)        2:52    Wiwek    Choose Your Poison (feat. Foreign Beggars) - Single    Электроника    2    43
Chemistry (feat. Rachel West)        3:44    Wiwek    Cycles    Танцевальная    2    9
Curious (feat. WATCH THE DUCK)        3:18    Wiwek    Cycles    Танцевальная    2    18
Choose Your Poison (feat. Foreign Beggars)        2:52    Wiwek    Cycles    Танцевальная    2    12
Black Panther        3:28    Wiwek & Kuenta I Tambu    Cycles    Танцевальная    2    14
Emergency        4:18    Wiwek, Slim Kofi, Glen Faria & AMY MIYÚ    Cycles    Танцевальная    2    17
Loudest MF (feat. Bok Nero) [Crisis Era Remix]        2:51    Yellow Claw    Amsterdam Trap Music, Vol. 3 (Remixes) - EP    Хаус    2    10
365        3:02    Zedd & Katy Perry    365 - Single    Танцевальная    2    5
Born to Survive (feat. rx Soul)        3:59    Zomboy    Rott n' Roll, Pt. 2 - EP    Дабстеп    2    2
Бруталити        3:26    2rbina 2rista    Brutality    Альтернативный рэп    2    4
Would You Understand (feat. Carly Paige)        3:30    3LAU    Would You Understand (feat. Carly Paige) - Single    Электроника    2    10
Over You (feat. Frida Sundemo)        3:54    Kasbo    Places We Don't Know    Электроника    2    12
Lose You to Love Me        3:26    Селена Гомес    Rare    Поп    2    16
El Terror (feat. Jon Z & Lil Toe)        2:41    йелоу клоу    El Terror (feat. Jon Z & Lil Toe) - Single    Танцевальная    2    9
Hard To Say Goodbye (feat. Chloe Angelides)        3:17    Ekali & ILLENIUM    Hard To Say Goodbye (feat. Chloe Angelides) - Single    Электроника    2    53
ICIMY        3:22    Phoebe Ryan    ICIMY - Single    Альтернатива    2    12
Don't Start Now        3:03    Dua Lipa    Don't Start Now - Single    Поп    2    18
Don't Let Me Down (feat. Daya)        3:29    The Chainsmokers    Collage - EP    Танцевальная    2    10
Alive        3:03    Snavs    Alive - Single    Танцевальная    2    11
If It Isn't You (feat. Brayden Kehler)        3:53    Nurko    If It Isn't You (feat. Brayden Kehler) - Single    Танцевальная    2    12
Circles        3:35    Post Malone    Hollywood's Bleeding    Хип-хоп    2    11
Mathematik (feat. Haftbefehl) [A19]        3:36    Lindemann    Mathematik (feat. Haftbefehl) - EP    Метал    2    11
Let Light Out (feat. Sunnie Williams)        3:50    ARMNHMR    Let Light Out (feat. Sunnie Williams) - Single    Танцевальная    2    12
Stay Up        3:24    Gill Chang & Danni Carra    Stay Up - Single    Танцевальная    2    17
Wardogz (feat. City Morgue)        2:35    GRAVEDGR    Wardogz (feat. City Morgue) - Single    Электроника    2    13
The Answer        3:17    Kalide & Bianca    The Answer - Single    Танцевальная    2    13
Kuku        2:51    Wiwek & RayRay    Kuku - Single    Танцевальная    2    6
Be Wary        3:09    GRAVEDGR    Be Wary - Single    Дабстеп    2    19
Don (feat. Dabow)        4:20    GRAVEDGR    Don (feat. Dabow) - Single    Электроника    2    15
Kamikaze        3:52    GRAVEDGR    Kamikaze - Single    Электроника    2    18
Rampage        2:59    GRAVEDGR    Rampage - Single    Танцевальная    2    14
Rawside (feat. Lit Lords)        3:24    GRAVEDGR    Rawside (feat. Lit Lords) - Single    Танцевальная    2    12
6 FEET UNDER        3:43    GRAVEDGR    6 FEET UNDER - Single    Танцевальная    2    26
El Chapo (Bonus Track)        3:40    The Game & Skrillex    The Documentary 2.5    Хип-хоп    2    6
Popular Monster        3:41    Falling In Reverse    Popular Monster - Single    Рок    2    21
Bass Drop        2:05    traila $ong    Bass Drop - Single    Танцевальная    2    5
Here with Me (feat. Nevve)        3:25    ARMNHMR    Here with Me (feat. Nevve) - Single    Танцевальная    2    13
Holding On (feat. Lowell)        3:38    Dabin    Holding On (feat. Lowell) - Single    Электроника    2    47
Let Me Go (feat. Alina Renae)        4:24    Nurko    Let Me Go (feat. Alina Renae) - Single    Танцевальная    2    5
LUCKY (feat. Tay Money)        2:44    BLVK JVCK    LUCKY (feat. Tay Money) - Single    Электроника    2    33
One More Night        4:15    Crystal Skies    Constellations - EP    Дабстеп    2    23
Release Me (feat. Gallie Fisher)        5:00    Crystal Skies    Constellations - EP    Дабстеп    2    24
Take Your Time (feat. Satellite Empire)        4:28    Last Heroes & Satellite Empire    Moments - EP    Танцевальная    2    25
Honest (feat. Broods)        3:48    San Holo    Honest (feat. Broods) - Single    Танцевальная    2    95
Fade        3:17    Gill Chang & Aviella    Fade - Single    Танцевальная    2    42
Won't Look Back (feat. Soundr)        3:45    StayLoose & Last Heroes    Won't Look Back (feat. Soundr) - Single    Танцевальная    2    26
Insane (feat. Tech N9ne)        3:32    Apashe    Insane (feat. Tech N9ne) - Single    Танцевальная    2    22
Move        3:01    GRAVEDGR & Krischvn    Move - Single    Электроника    2    24
The Drug in Me Is Reimagined        5:40    Falling In Reverse    The Drug in Me Is Reimagined - Single    Рок    2    42
Drown (feat. Au/Ra)        3:01    Ekali    A World Away    Электроника    2    19
Wrong Direction        4:09    Хейли Стейнфилд    Wrong Direction - Single    Поп    2    12
Happy        2:54    Oh Wonder    No One Else Can Wear Your Crown (Deluxe)    Поп    2    15
Decode        4:21    Paramore    Brand New Eyes (Deluxe)    Альтернатива    2    13
Champion of the World (Reimagined)        3:38    Coldplay    Coldplay: Reimagined - Single    Альтернатива    2    10
FICK DICH        3:20    GRAVEDGR, Carnage & Dither    6 FEET UNDER    Электроника    2    23
SHALLOW GRAVES        3:44    GRAVEDGR, Flosstradamus & Vulgatron    6 FEET UNDER    Электроника    2    26
Forgetting To Remember (feat. Kimberly Fransens)        3:01    йелоу клоу & Crisis Era    Never Dies    Танцевальная    2    24
Demons        3:08    Lit Lords    Demons - Single    Дабстеп    2    14
Gold        4:21    Koven    Gold / Yes - Single    Танцевальная    2    13
Made of Something Different Now        3:47    Snow Patrol    Reworked    Альтернатива    2    4
Never Worn White        3:45    Katy Perry    Never Worn White - Single    Поп    2    10
Turbulence        2:51    Ella Vos    Turbulence - Single    Поп    2    59
Favourite Ex        3:22    Maisie Peters    Favourite Ex - Single    Поп    2    4
Wherever You Are        3:05    Kodaline    Wherever You Are - Single    Поп    2    3
Say Less (feat. G-Eazy) [Eptic Remix]        3:50    Dillon Francis    Say Less (feat. G-Eazy) [Remixes] - Single    Танцевальная    2    2
Wasted On You (feat. Sara Skinner)        3:38    William Black    Universe - EP    Танцевальная    2    1
Forever        3:35    Taska Black    Forever - Single    Электроника    2    26
Comedown        2:48    Taska Black    Comedown - Single    Электроника    2    15
In the End (feat. Aviella)        3:09    Taska Black    Minds - EP    Электроника    2    30
Fairy Tale        4:15    Ekali & Elohim    A World Away    Электроника    2    28
Let It Die        3:38    Rival & Philip Strand    Let It Die - Single    Bass    2    19
Skate (feat. Saint Sinner)        3:07    Tycho    Weather    Электроника    2    20
No Stress (feat. Saint Sinner)        3:50    Tycho    Weather    Электроника    2    17
The Reason        3:01    Gill Chang    The Reason - Single    Танцевальная    2    14
Miracle        3:08    CHVRCHES    Love Is Dead    Альтернатива    2    18
Why Do I Try        3:07    Gill Chang & Danni Carra    Why Do I Try - Single    Электроника    2    27
Butterflies (feat. Dia Frampton)        3:22    William Black & Fairlane    Butterflies (feat. Dia Frampton) - Single    Танцевальная    2    7
Back Together        3:32    William Black & RUNN    Pages    Танцевальная    2    6
Run Wild        2:53    Danny Avila    Run Wild - Single    Танцевальная    2    6
I’m Fine (feat. Nevve)        3:30    William Black    Pages    Танцевальная    2    6
Faith        4:11    Nurko & Dia Frampton    Faith - Single    Танцевальная    2    6
The Mother We Share        3:11    CHVRCHES    The Bones of What You Believe    Электроника    2    26
Home (feat. Niko Athanasatos) [Nurko Remix]        3:54    MitiS    Shattered Ep (Remixes)    Дабстеп    2    14
Shattered (feat. Runn) [Culture Code Remix]        4:18    MitiS    Shattered Ep (Remixes)    Дабстеп    2    19
Home (feat. Niko Athanasatos)        3:46    MitiS    Shattered Ep (Remixes)    Дабстеп    2    13
Riptide        3:20    Trivecta, Amidy & RØRY    Riptide - Single    Дабстеп    2    17
Breathe in the Moment        3:26    APEK, HALIENE & Man Cub    Breathe in the Moment - Single    Танцевальная    2    11
In a Dream (feat. SVRCINA)        4:26    Man Cub    In a Dream (feat. SVRCINA) - Single    Танцевальная    2    18
Hope It Hurts (feat. Essenger)        4:18    Dabin    Hope It Hurts (feat. Essenger) - Single    Электроника    2    30
Heartbeats        3:16    Fairlane    Heartbeats - Single    Танцевальная    2    51
Feel Something        3:41    ILLENIUM, Excision & I Prevail    Feel Something - Single    Танцевальная    2    16
Wait (feat. Monika Santucci)        4:45    MitiS & Crystal Skies    Wait (feat. Monika Santucci) - Single    Дабстеп    2    19
Puzzle (feat. Claire Ridgely)        3:14    Fairlane    Puzzle (feat. Claire Ridgely) - Single    Танцевальная    2    38
Uncover You (feat. Ilsey)        3:54    Fairlane    Uncover You (feat. Ilsey) - Single    Танцевальная    2    33
Wildfire        3:37    Fairlane & Nevve    Wildfire - Single    Танцевальная    2    30
GVNG X4 (feat. Comethazine)        3:00    BLVK JVCK    GVNG X4 (feat. Comethazine) - Single    Танцевальная    2    8
Like It Is        3:03    Kygo, Zara Larsson & Tyga    Like It Is - Single    Танцевальная    2    18
What You Promised        4:22    Fairlane & Zack Gray    What You Promised - Single    Танцевальная    2    21
Body Back (feat. Maia Wright) [MitiS Remix]        4:23    Gryffin    Body Back (The Remixes) [feat. Maia Wright] - Single    Танцевальная    2    16
I'll Wait        3:35    Kygo & Sasha Sloan    I'll Wait - Single    Танцевальная    2    31
Hold You Tonight        3:39    Gryffin & Chris Lane    Hold You Tonight - Single    Поп    2    18
All We Know (SHY Version)        3:27    The Chainsmokers            2    37
Somebody Else        2:43    Loote    Somebody Else - Single    Поп    2    11
Ride or Die        2:37    Denny White & Gill Chang    Ride or Die - Single    Танцевальная    2    14
More Than Words        3:51    Culture Code & RØRY    More Than Words - Single    Танцевальная    2    24
Seaside        3:26    Haux    All We've Known - EP    Электроника    2    10
Midnight (feat. Liam Payne)        3:40    Alesso    Midnight (feat. Liam Payne) - Single    Танцевальная    2    2
Feel Me        3:46    Селена Гомес    Rare (Deluxe)    Поп    2    2
Chameleon        3:28    Мако & Elephante    Chameleon - Single    Танцевальная    2    5
The In Between (feat. Anjulie)        3:33    Elephante    Glass Mansion    Танцевальная    2    6
LA & the Parties (feat. Sevyn Streeter & Luh Kel)        2:46    Lost Kings    Lost Angeles - EP    Электроника    2    13
Try (feat. SAFE)        3:07    Lost Kings    Lost Angeles - EP    Электроника    2    8
Too Far Gone (feat. Anna Clendening)        3:17    Lost Kings    Lost Angeles - EP    Электроника    2    8
Babylon (feat. Denzel Curry) [Skrillex & Ronny J Remix]        2:37    Ekali    Babylon (feat. Denzel Curry) [Remixes] - Single    Электроника    2    5
Babylon (feat. Denzel Curry)        3:30    Ekali    Babylon (feat. Denzel Curry) - Single    Электроника    2    8
In the End I Just Want You to Be Happy        5:32    San Holo    Stay Vibrant - Single    Электроника    2    1
Don't Forget to Breathe Today        4:07    San Holo    Stay Vibrant - Single    Электроника    2
(If Only I Could) Hold You        4:21    San Holo    Stay Vibrant - Single    Электроника    2
Каждый раз        3:28    Монеточка            2    1
Киви кошелёк        3:16    Хадн дадн    Ляоакын    Поп    2    7
Батон        1:43    Хадн дадн    Подружки - EP    Поп    2    2
Find Someone        3:09    A R I Z O N A    Find Someone - Single    Альтернатива    2    2
Hold the Line (Acoustic)        3:16    A R I Z O N A    Hold the Line (Acoustic) - Single    Альтернатива    2    11
Scars (feat. Ryan Tedder)        3:19    Alesso    Forever    Танцевальная    2    3
Twerk Pit (feat. My Bad & Born I Music)        3:58    ARIUS    Lit AF - EP    Танцевальная    2    8
Tim        3:47    ARTY    Tim - Single    Танцевальная    2    9
Wobble        3:08    Crankdat & Tisoki    Wobble - Single    Дабстеп    2    19
Hold (feat. Daniela Andrade)        5:52    Dabin    Two Hearts    Электроника    2    2
In Time        3:50    Dizzy    Baby Teeth    Альтернатива    2    8
Yesterday        3:13    DubVision & Raiden    Yesterday - Single    Танцевальная    2    4
My Blood        3:54    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2    3
Anything Could Happen        4:46    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2    1
Figure 8        4:07    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2    1
Explosions        4:04    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2    2
Burn        3:51    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2
You My Everything        3:29    Ellie Goulding    Halcyon Days (Deluxe)    Поп    2    1
Nobody Compares to You (feat. Katie Pearlman)        3:51    Gryffin    Gravity, Pt. 1 - EP    Танцевальная    2    1
Just for a Moment (feat. Iselin)        4:15    Gryffin    Gravity, Pt. 1 - EP    Танцевальная    2    11
Crashing (feat. Bahari)        3:50    ILLENIUM    Crashing (feat. Bahari) - Single    Танцевальная    2    9
Take You Down        3:41    ILLENIUM    Take You Down - Single    Танцевальная    2    20
All I Want        5:06    Kodaline    In a Perfect World    Альтернатива    2    3
It Ain't Me        3:41    Kygo & Селена Гомес    It Ain't Me - Single    Поп    2    7
Remind Me to Forget        3:37    Kygo & Miguel    Remind Me to Forget - Single    Танцевальная    2    4
This Moment (feat. Jonathan Mendelsohn) [Original Edit]        4:40    Nic Chagall    This Moment - EP    Поп    2    5
This Time (Radio Edit)        3:12    Nic Chagall & Jonathan Mendelsohn    This Time - Single    Транс    2    5
I Wanna Know (feat. Bea Miller)        3:18    NOTD    I Wanna Know (feat. Bea Miller) - Single    Поп    2    10
Walk Me Home        2:57    P!nk    Walk Me Home - Single    Поп    2    7
Over Getting over You (feat. Matthew Koma)        3:41    Said The Sky    Wide-Eyed    Танцевальная    2    9
worthy        4:59    San Holo    album1    Электронная музыка    2    20
I Still See Your Face        3:38    San Holo    I Still See Your Face - Single    Электроника    2    9
Lead Me Back        4:44    San Holo    Lead Me Back - Single    Электроника    2    8
Ocean (feat. Jonathan Mendelsohn)        3:46    Seven Lions & Jason Ross    Ocean - Single    Транс    2    25
First Time (feat. Dylan Matthew)        4:58    Seven Lions, SLANDER, Dabin & Dylan Matthew    First Time (feat. Dylan Matthew) - Single    Танцевальная    2    1
Cyclone        5:36    Shwin    Adrift / Cyclone - Single    Танцевальная    2    4
Never Give Up        3:42    Sia    Lion (Original Motion Picture Soundtrack)    Саундтреки    2
Strangers        3:54    Sigrid    Sucker Punch    Поп    2    4
Fuji Opener (feat. Alvin Risk)        2:47    Skrillex    Show Tracks - Single    Танцевальная    2    4
Call You Mine (feat. Bebe Rexha)        3:38    The Chainsmokers    World War Joy    Танцевальная    2    2
Something Just Like This        4:07    The Chainsmokers & Coldplay    Memories...Do Not Open    Танцевальная    2    13
Wings (Myon & Shane 54 Summer Of Love Mix)        6:04    Tom Swoon    Wings (feat. Taylr Renee) [Remixes] - Single    Танцевальная    2    6
You're the Best Thing About Me        3:45    U2    Songs of Experience (Deluxe Edition)    Рок    2    2
I Want Your Love        6:57    Unlivian    I Want Your Love - Single    Хаус    2    3
End Game        5:09    Zomboy    Rott n' Roll, Pt. 2 - EP    Дабстеп    2    5
Better with You (feat. Iselin)        3:13    3LAU & Justin Caruso    Better with You (feat. Iselin) - Single    Танцевальная    2    9

"""

enum Song: Int {
    case title = 0
    case lenght = 1
    case artist = 2
    case album = 3
}

let lines = itunesRaw.components(separatedBy: "\n")

var tracks = [String]()
var artists = Set<String>()

for line in lines {
    let songComponents = line.components(separatedBy: "   ")
        .filter { !$0.isEmpty }
        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    if songComponents.count > 3 {
        let artistName = songComponents[Song.artist.rawValue]
        let songTitle = songComponents[Song.title.rawValue]
        artists.insert(artistName)
        tracks.append("\(artistName) - \(songTitle)")
    }
}

print("---- Треки ----")
let sortedTracks = tracks.sorted(by: <)
for (index, track) in sortedTracks.enumerated() {
    print("\(index). \(track)")
}

print("---- Уникальные артисты ----")
let sortedArtists = Array(artists).sorted(by: <)
for artist in sortedArtists {
    print(artist)
}

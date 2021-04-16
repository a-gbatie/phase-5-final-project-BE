# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Medium.destroy_all
Platform.destroy_all


platforms = [
    {
        "company": 'Netflix',
        "image": 'https://assets.brand.microsites.netflix.io/assets/493f5bba-81a4-11e9-bf79-066b49664af6_cm_1440w.png?v=26'
    },
    {
        "company": 'Hulu',
        "image": 'https://assetshuluimcom-a.akamaihd.net/h3o/facebook_share_thumb_default_hulu.jpg'
    },
    {
        "company": 'Amazon Prime',
        "image": 'https://www.telesurenglish.net/mrf4u/statics/i/ps/www.telesurtv.net/__export/1584731358366/sites/telesur/img/2020/03/20/amazon_2.jpg?width=1200&enable=upscale'
    },
    {
        "company": 'Disney Plus',
        "image": 'https://cdn57.androidauthority.net/wp-content/uploads/2019/10/disney-plus-logo.jpg'
    },
    {
        "company": 'HBO Max',
        "image": 'https://www.underconsideration.com/brandnew/archives/hbo_max_followup_00.jpg'
    }
]
Platform.create(platforms)

media = [
    {
        "title": 'The Vampire Diaries',
        "genre": 'Drama',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BMDk3YzgxNDQtNTEzOS00NDMyLWFlYmYtYTZlMDk1NDkxNmMyXkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_UY268_CR0,0,182,268_AL_.jpg',
        # "release_date": 'nil'
        "network": 'CW',
        "description": 'The lives, loves, dangers and disasters in the town, Mystic Falls, Virginia. Creatures of unspeakable horror lurk beneath this town as a teenage girl is suddenly torn between two vampire brothers.',
        "starring": 'Nina Dobrev, Paul Wesley, Ian Somerhalder',
        "seasons": '8',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": 'New Girl',
        "genre": 'Comedies',
        "is_movie": 'false',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/91nZQNPpSHL._RI_.jpg',
        # "release_date": 'nil'
        "network": 'FOX',
        "description": 'Searching for answers, a socially awkward but endearing teacher moves in with three bachelors who think they understand love but are equally as lost.',
        "starring": 'Zooey Deschanel, Jake Johnson, Max Greenfield',
        "seasons": '7',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": "Grey's Anatomy",
        "genre": 'Drama',
        "is_movie": 'false',
        "image": 'https://loyolaphoenix.com/wp-content/uploads/2020/09/image-1200x894.png',
        # "release_date": 'nil'
        "network": 'ABC',
        "description": 'A drama centered on the personal and professional lives of five surgical interns and their supervisors.',
        "starring": 'Ellen Pompeo, Sandra Oh, Patrick Dempsey',
        "seasons": '16',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": 'Orange is the new Black',
        "genre": 'Drama',
        "is_movie": 'false',
        "image": 'https://www.dkoding.in/wp-content/uploads/Orangeisthenewblack-TvWeb-Entertainment-DKODING.jpg',
        # "release_date": 'nil'
        "network": 'Netflix Originals',
        "description": "When a past crime catches up with her, a privileged New Yorker ends up in a women's prison, where she quickly makes friends and foes.",
        "starring": 'Taylor Schilling, Kate Mulgrew, Laura Prepon',
        "seasons": '7',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": 'Black Mirror',
        "genre": 'Thriller',
        "is_movie": 'false',
        "image": 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlLzOHiETAD_6MAqbPRoofOGuHFIAsIg7xCQ&usqp=CAU',
        # "release_date": 'nil'
        "network": 'Netflix Originals',
        "description": "This sci-fi anthology seris explores a twisted,high-tech near-future where humanity's greatest innovations and darkest instincts collide.",
        "starring": 'Various Actors & Actresses',
        "seasons": '5',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": 'Crazy Stupid Love',
        "genre": 'Comedies',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BMTg2MjkwMTM0NF5BMl5BanBnXkFtZTcwMzc4NDg2NQ@@._V1_.jpg',
        "release_date": '2011',
        # "network": 'CW',
        "description": "Blindsided by the end of his marriage and hopeless at dating, Cal receives a helping hand from a smooth-talking player who's about to meet his match.",
        "starring": 'Steve Carell, Ryan Gosling, Julianna Moore',
        platform_id: Platform.find_by(:company => 'Netflix').id
        # "seasons": 

    },
    {
        "title": 'Olympus Has Fallen',
        "genre": 'Action',
        "is_movie": 'true',
        "image": 'https://upload.wikimedia.org/wikipedia/en/b/bf/Olympus_Has_Fallen_poster.jpg',
        "release_date": '2013',
        # "network": 'CW',
        "description": "When ruthless terrorists seize the White House, one man is the last line of defense.Luckily, he's a damn good line.",
        "starring": 'Gerard Butler, Aaron Eckhart, Morgan Freeman',
        platform_id: Platform.find_by(:company => 'Netflix').id
        # "seasons": '8'

    },
    {
        "title": 'American Murder: The Family Next Door',
        "genre": 'True Crime Documentaries',
        "is_movie": 'true',
        "image": 'https://upload.wikimedia.org/wikipedia/en/thumb/4/40/American_Murder_The_Family_Next_Door_Poster.jpg/220px-American_Murder_The_Family_Next_Door_Poster.jpg',
        "release_date": '2020',
        # "network": 'FOX',
        "description": 'Using raw, firsthand footage, this documentary examines the disappearance of Shanann Watts and her children, and the terrible events that followed.',
        "starring": 'Shanann Watts, Chris Watts',
        platform_id: Platform.find_by(:company => 'Netflix').id
        # "seasons": '7'

    },
    {
        "title": "Django: Unchained",
        "genre": 'Westerns',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UY1200_CR90,0,630,1200_AL_.jpg',
        "release_date": '2012',
        # "network": 'ABC',
        "description": 'Accompanied by a German bounty hunter, a freed slave named Django travels across America to free his wife from a sadistic plantation owner.',
        "starring": 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio',
        platform_id: Platform.find_by(:company => 'Netflix').id
        # "seasons": '16'

    },
    {
        "title": 'Julie & Julia',
        "genre": 'Comedies',
        "is_movie": 'true',
        "image": 'https://upload.wikimedia.org/wikipedia/en/thumb/0/00/Julie_and_julia.jpg/220px-Julie_and_julia.jpg',
        "release_date": '2009',
        # "network": 'Netflix Originals',
        "description": "In this heartwarming tale, Julie Powell decides to spice up her uneventful life by cooking all 524 recipes outlined in Julia Child's classic cookbook.",
        "starring": 'Meryl Streep, Amy Adams, Stanley Tucci',
        platform_id: Platform.find_by(:company => 'Netflix').id
        # "seasons": '7'

    },
    {
        "title": 'The Dark Knight',
        "genre": 'Adventure',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg',
        "release_date": '2008',
        # "network": 'Netflix Originals',
        "description": "As Batman, Lt. Gordon and the district attorney continue to dismantle Gotham's criminal underground, a new villian threatens to undo their good work.",
        "starring": 'Christian Bale, Heath Ledger, Aaron Eckhart',
        platform_id: Platform.find_by(:company => 'Netflix').id

    },
    {
        "title": "Bob's Burgers",
        "genre": 'Adult Animation',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BZGJiNmM1NDctNWUxYS00YzE4LWJjNTgtYTJhYzE0NjFmMTMwXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg',
        # "release_date": 'nil'
        "network": 'FOX',
        "description": "Bob runs Bob's Burgers with the help of his wife and their three kids. Business may be slow, but they never give up hope.",
        "starring": 'H. Jon Benjamin, Dan Mintz, Eugene Mirman',
        "seasons": '11',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Modern Family',
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://roost.nbcuni.com/bin/viewasset.html/content/dam/Peacock/Campaign/landingpages/library/modernfamily/trailer/modern-fam-trailer.jpg/_jcr_content/renditions/original',
        # "release_date": 'nil'
        "network": 'abc',
        "description": "Today's American families come in all shapes and sizes. The cookie cutter mold of man + wife + 2.5 kids is a thing of the past, as it becomes quickly apparent in the bird's eye view of ABC's half-hour comedy, which takes an honest and often hilarious look at the composition and complexity of modern family life.",
        "starring": "Ed O'Neil, Julie Bowen, Ty Burrell",
        "seasons": '11',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Law & Order: Special Victims Unit',
        "genre": 'Crime',
        "is_movie": 'false',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/81ZGiRKlBfL._RI_.jpg',
        # "release_date": 'nil'
        "network": 'NBC',
        "description": "This hard-hitting and emotional series from NBC's 'Law & Order' brand chronicles the life and crimes of the Special Victims Unit of the New York City Police Department, an elite squad of detectives who investigate sexually based crimes.",
        "starring": 'Mariska Hargitay, 
        Ice-T, Chris Meloni',
        "seasons": '22',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": "American Dad!",
        "genre": 'Adult Animation',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BNDRkOWIyOTUtMjg5YS00OTJjLTgwNGYtMjgxMTA0NWQ2NGI3L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY1200_CR85,0,630,1200_AL_.jpg',
        # "release_date": 'nil'
        "network": 'tbs',
        "description": "This screwball family full of radically different personalities is just trying to figure out how to love and trust one another in a bi-partisan world.",
        "starring": 'Seth MacFarlane, Wendy Schaal, Rachael MacFarlane',
        "seasons": '15',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Killing Eve',
        "genre": 'Action/Thriller',
        "is_movie": 'false',
        "image": 'https://miro.medium.com/max/510/1*32bJEpZMMt_-GZPWlfSruQ.jpeg',
        # "release_date": 'nil'
        "network": 'BBC America',
        "description": "Villanelle is a psychopathic assassin, and Eve is the woman charged with hunting her down; the two fiercely intelligent women, equally obsessed with each other, go head to head in an epic game of cat and mouse.",
        "starring": 'Sandra Oh, Jodie Comer, Fiona Shaw',
        "seasons": '3',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'The Amazing Race',
        "genre": 'Reality TV',
        "is_movie": 'false',
        "image": 'https://wwwimage-tve.cbsstatic.com/base/files/show_page/ar_about_web_1400x440.jpg',
        # "release_date": 'nil'
        "network": 'CBS',
        "description": "From athletes and actors to tattoo artists, social workers and musicians - a diverse mix of teams will need to utilize their street smarts and savvy know-how to compete in the race of their lifetime. Multiple Emmy-award winner for Outstanding Reality-Competition Program.",
        "starring": 'Phil Keoghan',
        "seasons": '29',
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Pretty Woman',
        "genre": 'Comedy',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BNjk2ODQzNDYxNV5BMl5BanBnXkFtZTgwMTcyNDg4NjE@._V1_.jpg',
        "release_date": '1990',
        # "network": 'CW',
        "description": "Julia Roberts and Richard Gere star in an irresistible comedy hit.",
        "starring": 'Richard Gere, Julia Roberts, Héctor Elizondo',
        platform_id: Platform.find_by(:company => 'Hulu').id
        # "seasons": 

    },
    {
        "title": 'Booksmart',
        "genre": 'Comedy',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BMjEzMjcxNjA2Nl5BMl5BanBnXkFtZTgwMjAxMDM2NzM@._V1_.jpg',
        "release_date": '2019',
        # "network": 'CW',
        "description": "Booksmart is a comedy about two academic superstars and best friends on a mission to cram four years of fun into one night.",
        "starring": 'Kaitlyn Dever, Beanie Feldstein, Jessica Williams',
        platform_id: Platform.find_by(:company => 'Hulu').id
        # "seasons": '8'

    },
    {
        "title": 'The DaVinci Code',
        "genre": 'Adventure',
        "is_movie": 'true',
        "image": 'http://vignette1.wikia.nocookie.net/davincicode/images/5/57/Da_Vinci_Code_characters_poster.jpg/revision/latest?cb=20150623230955',
        "release_date": '2006',
        # "network": 'FOX',
        "description": "A murder inside the Louvre and clues in Da Vinci paintings lead to the discovery of a religious mystery protected by a secret society for two thousand years -- which could shake the foundations of Christianity.",
        "starring": 'Tom Hanks, Audrey Tautou, Ian McKellen',
        platform_id: Platform.find_by(:company => 'Hulu').id
        # "seasons": '7'

    },
    {
        "title": "12 Years A Slave",
        "genre": 'Drama/History',
        "is_movie": 'true',
        "image": 'https://presleycollectibles.com/wp-content/uploads/12-Years-A-Slave-scaled.jpg',
        "release_date": '2013',
        # "network": 'ABC',
        "description": "Based on the true story of a man sold into slavery.",
        "starring": "Chiwetel Ejiofor, Michael Fassbender, Lupita Nyong'o",
        # "seasons": '16'
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Parasite',
        "genre": 'Korean Drama',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UY1200_CR90,0,630,1200_AL_.jpg',
        "release_date": '2019',
        # "network": 'Netflix Originals',
        "description": "Greed, class discrimination, and a mysterious interloper threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.",
        "starring": 'Song Kang-ho, Yeo-jeong Jo',
        # "seasons": '7'
        platform_id: Platform.find_by(:company => 'Hulu').id

    },
    {
        "title": 'Napoleon Dynamite',
        "genre": 'Comedy',
        "is_movie": 'true',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/81j%2BZPIsihL._SL1500_.jpg',
        "release_date": '2004',
        # "network": 'Netflix Originals',
        "description": "Quirky cult comedy about a frizzy haired high-school geek and the screwballs that surround him in a dingy small town.",
        "starring": 'Jon Heder, Jonathan Gries, Aaron Ruell',
        platform_id: Platform.find_by(:company => 'Hulu').id
    },
    {
        "title": 'The Boys',
        "genre": 'Action',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BNGEyOGJiNWEtMTgwMi00ODU4LTlkMjItZWI4NjFmMzgxZGY2XkEyXkFqcGdeQXVyNjcyNjcyMzQ@._V1_UY1200_CR90,0,630,1200_AL_.jpg',
        # "release_date": 'nil'
        "network": 'Amazon Original',
        "description": 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.',
        "starring": 'Karl Urban, Jack Quaid, Antony Starr',
        "seasons": '2',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": 'The Expanse',
        "genre": 'Sci-Fi',
        "is_movie": 'false',
        "image": 'https://static.wikia.nocookie.net/expanse/images/f/f4/The_Expanse_S4_twitter_poster-Dec13-811x1200.jpg/revision/latest?cb=20191206024642',
        # "release_date": 'nil'
        "network": 'Amazon Original',
        "description": "In the 24th century, a disparate band of antiheroes unravel a vast conspiracy that threatens the Solar System's fragile state of cold war.",
        "starring": 'Daniel Abraham, Mark Fergus, Ty Franck',
        "seasons": '5',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": 'The Wilds',
        "genre": 'Drama',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BMzgzZDA2NmEtZTAwZi00ZTY3LWFiYTktNTdjYTBkNTY1N2E4XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg',
        # "release_date": 'nil'
        "network": 'Amazon Original',
        "description": "A group of teens must survive after a crash leaves them stranded. There's just one twist to this thrilling drama - these girls did not end up on this island by accident.",
        "starring": 'Racel Griffiths, Sophia Ali, Reign Edwards',
        "seasons": '1',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": "Humans",
        "genre": 'Sci-Fi/Drama',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BMTQ3NjE2OTY4NF5BMl5BanBnXkFtZTgwMTE0NDc0ODE@._V1_.jpg',
        # "release_date": 'nil'
        "network": 'AMC',
        "description": "In a parallel present where the latest must-have gadget for any busy family is a 'Synth' - a highly-developed robotic servant that's so similar to a real human is transforming the way we live.",
        "starring": 'Gemma Chan, Katherine Parkinson, Tom Goodman-Hil',
        "seasons": '3',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": 'Monk',
        "genre": 'Crime/Comedy',
        "is_movie": 'false',
        "image": 'https://cdn.wegotthiscovered.com/wp-content/uploads/monk-logo.jpg',
        # "release_date": 'nil'
        "network": 'usa',
        "description": "The series follows Adrian Monk, a brilliant former San Francisco detective, who now consults the police as a private consultant who battles with an obsessive-compulsive disorder.",
        "starring": 'Tony Shalhoub, Jason Gray-Stanford, Ted Levine',
        "seasons": '8',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": 'A Different World',
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BMjM0NzVmZmItNTFmNC00ZTFkLWJhY2QtODAxNjdmMzAyMDE5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjg5NjkwODg@._V1_UY1200_CR97,0,630,1200_AL_.jpg',
        # "release_date": 'nil'
        "network": 'NBC',
        "description": "A group of students at a historically Black university struggle to make it through college.",
        "starring": 'Kadeem Hardison, Jasmine Guy, Dawnn Lewis',
        "seasons": '6',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": 'Memoirs of a Geisha',
        "genre": 'Drama',
        "is_movie": 'true',
        "image": 'https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/chameleon/title-movie/244790_MEMOIRS%20OF%20A%20GEISHA_1400x2100%20UV_Eng_0.jpg?itok=Vt01XTKw',
        "release_date": '2005',
        # "network": 'CW',
        "description": "A Cinderella story set in a mysterious and exotic world, this stunning romantic epic shows how a house servant blossoms, against all odds, to become the most captivating geisha of her day.",
        "starring": 'Shizuko Hoshi, Ziyi Zhang, Ken Watanabe',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id
        # "seasons": 

    },
    {
        "title": 'Coming 2 America',
        "genre": 'Comedy',
        "is_movie": 'true',
        "image": 'https://www.comingsoon.net/assets/uploads/gallery/coming-2-america/coming-2-america-poster.jpg',
        "release_date": '2021',
        # "network": 'CW',
        "description": "Akeem and Semmi are back! Set in the lush and royal country of Zamunda, newly-crowned King Akeem (Eddie Murphy) and his trusted confidante Semmi (Arsenio Hall) embark on an all-new hilarious adventure that has them traversing the globe from their great African nation to the borough of Queens, New York – where it all began.",
        "starring": 'Eddie Murphy, Arsenio Hall, Jermaine Fowler',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id
        # "seasons": '8'

    },
    {
        "title": 'Knives Out',
        "genre": 'Drama/Comedy',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_UY1200_CR90,0,630,1200_AL_.jpg',
        "release_date": '2019',
        # "network": 'FOX',
        "description": "When renowned crime novelist Harlan Thrombey is found dead at his estate, the inquisitive Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan's dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan's untimely death.",
        "starring": 'Ana De Armas, Toni Collette, Christopher Plummer',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id
        # "seasons": '7'

    },
    {
        "title": "The Addams Family",
        "genre": 'Animation',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/M/MV5BODBjOTAzZmMtNGJkOC00M2M3LWI1MTctZjZlMzdiODBkMzc0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_UY1200_CR90,0,630,1200_AL_.jpg',
        "release_date": '2019',
        # "network": 'ABC',
        "description": "Get ready to snap your fingers! The Addams Family is back on the big screen in the first animated comedy about the kookiest family on the block. Funny, outlandish, and utterly iconic, the Addams Family redefines what it means to be a good neighbor.",
        "starring": 'Oscar Isaac, Charlize Theron, Chloë Grace Moretz',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id
        # "seasons": '16'

    },
    {
        "title": 'In Time',
        "genre": 'Action',
        "is_movie": 'true',
        "image": 'https://flxt.tmsimg.com/assets/p8640610_p_v13_ah.jpg',
        "release_date": '2011',
        # "network": 'Netflix Originals',
        "description": "A lone man sets out to shake up a disturbing future world in which time is the ultimate currency.",
        "starring": 'Amanda Seyfried, Justin Timberlake, Cillian Murphy',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id
        # "seasons": '7'

    },
    {
        "title": "Breakfast at Tiffany's",
        "genre": 'Comedy',
        "is_movie": 'true',
        "image": 'https://flxt.tmsimg.com/assets/p463_p_v10_ab.jpg',
        "release_date": '1961',
        # "network": 'Netflix Originals',
        "description": "Holly is a deliciously eccentric New York City playgirl determined to marry a Brazilian millionaire. George Peppard plays her next-door neighbour, a writer who is 'sponsored' by a wealthy Patricia Neal. Guessing who's the right man for Holly is easy.",
        "starring": 'Audrey Hepburn, George Peppard, Patricia Neal',
        platform_id: Platform.find_by(:company => 'Amazon Prime').id

    },
    {
        "title": "The Proud Family",
        "genre": 'Animation',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BYTI1ZGU3MDYtOWY5Yi00YmI3LWE1YWMtMzRkMWYyYmE0ZjEyXkEyXkFqcGdeQXVyOTQ5Njc0MDU@._V1_UY1200_CR135,0,630,1200_AL_.jpg',
        # "release_date": 'nil'
        "network": 'Disney Channel',
        "description": "Follow the adventures and misadventures of Penny Proud as she does her best to navigate through the early years of teend-dom.",
        "starring": 'Kyla Pratt, Tommy Davidson, Jo Marie Payton',
        "seasons": '2',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": 'Once Upon A Time',
        "genre": 'Fantasy',
        "is_movie": 'false',
        "image": 'https://www.withanaccent.com/wp-content/uploads/2020/08/Once-Upon-a-Time.jpg',
        # "release_date": 'nil'
        "network": 'abc',
        "description": "A young woman with a troubled past is drawn to a small town in Maine where fairy tales are to be believed.",
        "starring": "Ginnifer Goodwin, Jennifer Morrison, Lana Parrilla",
        "seasons": '7',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": 'Kim Possible',
        "genre": 'Animation',
        "is_movie": 'false',
        "image": 'https://www.spectatornews.com/wp-content/uploads/2018/10/Kim-Possible-600x900.jpg',
        # "release_date": 'nil'
        "network": 'Disney Channel',
        "description": "A high school cheerleader and her accident-prone best friend balance their duties as global crime-fighters with the typical challenges of adolescence.",
        "starring": 'Christy Carlson Romano, Will Friedle, Nancy Cartwright',
        "seasons": '4',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": "Boy Meets World",
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/I/51KyGd-CaTL._AC_.jpg',
        # "release_date": 'nil'
        "network": 'Disney Channel',
        "description": "An adolescent with two siblings tests his various theories about life as he endures the trials of growing up alongside a good friend.",
        "starring": 'Ben Savage, Rider Strong, Danielle Fishel',
        "seasons": '7',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": 'Gargoyles',
        "genre": 'Animation',
        "is_movie": 'false',
        "image": 'https://m.media-amazon.com/images/M/MV5BZGE1OTY0YTMtZTJkZC00ODA2LWIxYjctZmUxMDA5MjI3ZWExXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY1200_CR68,0,630,1200_AL_.jpg',
        # "release_date": 'nil'
        "network": 'Disney Channel',
        "description": "A clan of heroic night creatures pledge to protect modern New York City as they did in Scotland one thousand years earlier.",
        "starring": 'Keith David, Salli Richardson-Whitfield, JEff Bennett',
        "seasons": '3',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": "That's So Raven",
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-12561-140nmit_a7a4c09d.jpeg',
        # "release_date": 'nil'
        "network": 'Disney Channel',
        "description": "A teenage girl periodically receives brief psychic visions of the near future. Trying to make these visions come true results in trouble, and hilarious situations, for the girl and her friends.",
        "starring": 'Raven-Symoné, Orlando Brown, Anneliese vn der Pol',
        "seasons": '4',
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": "Rodgers & Hammerstein's: Cinderella",
        "genre": 'Romance',
        "is_movie": 'true',
        "image": 'https://static.wikia.nocookie.net/disney/images/8/8c/Rodgers_%26_Hammerstein%27s_Cinderella.jpg/revision/latest?cb=20160124172703',
        "release_date": '1997',
        # "network": 'CW',
        "description": "Although mistreated by her cruel stepmother and stepsisters, Cinderella is able to attend the royal ball through the help of a fairy godmother.",
        "starring": 'Brandy Norwood, Bernadette Peters, Whitney Houston',
        platform_id: Platform.find_by(:company => 'Disney Plus').id
        # "seasons": 

    },
    {
        "title": 'Annie',
        "genre": 'Musical',
        "is_movie": 'true',
        "image": 'http://cdn.shopify.com/s/files/1/1083/5290/products/Annie_1999_Movie_Poster_27x40_grande.jpg?v=1449551808',
        "release_date": '1999',
        # "network": 'CW',
        "description": "A little orphan girl catches the attention of a kind man named Mr. Warbucks, who wants to adopt her, but the cruel, strict orphanage owner has a scheme to keep Annie - and her reward money.",
        "starring": 'Kathy Bates, Victor Garber, Alicia Morton',
        platform_id: Platform.find_by(:company => 'Disney Plus').id
        # "seasons": '8'

    },
    {
        "title": 'Avengers: Infinity War',
        "genre": 'Action-Adventure',
        "is_movie": 'true',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._AC_SL1500_.jpg',
        "release_date": '2018',
        # "network": 'FOX',
        "description": "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.",
        "starring": 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo',
        platform_id: Platform.find_by(:company => 'Disney Plus').id
        # "seasons": '7'

    },
    {
        "title": "Finding Nemo",
        "genre": 'Animation',
        "is_movie": 'true',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/51T9vLGUtyL._AC_.jpg',
        "release_date": '2003',
        # "network": 'ABC',
        "description": "After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.",
        "starring": "Albert Brooks, Ellen DeGeneres, Alexander Gould",
        # "seasons": '16'
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": 'The Lizzie McGuire Movie',
        "genre": 'Romance/Comedy',
        "is_movie": 'true',
        "image": 'https://pbs.twimg.com/media/CpXoDqnWgAA5eJo.jpg',
        "release_date": '2003',
        # "network": 'Netflix Originals',
        "description": "Lizzie McGuire has graduated from middle school and takes a trip to Rome, Italy with her class. And what was supposed to be only a normal trip, becomes a teenager's dream come true.",
        "starring": 'Hilary Duff, Adam Lamberg, Alex Borstein',
        # "seasons": '7'
        platform_id: Platform.find_by(:company => 'Disney Plus').id

    },
    {
        "title": 'The Sound of Music',
        "genre": 'Musical',
        "is_movie": 'true',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/71j5kC95RSL._AC_SY741_.jpg',
        "release_date": '1965',
        # "network": 'Netflix Originals',
        "description": "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.",
        "starring": 'Julie Andrews, Christopher Plummer, Eleanor Parker',
        platform_id: Platform.find_by(:company => 'Disney Plus').id
    },
    {
        "title": "Game of Thrones",
        "genre": 'Action-Adventure',
        "is_movie": 'false',
        "image": 'https://images.wallpapersden.com/image/download/jon-snow-game-of-thrones-season-8-poster_a2hramWUmZqaraWkpJRmbmdlrWZlbWU.jpg',
        # "release_date": 'nil'
        "network": 'HBO',
        "description": "Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.",
        "starring": 'Emilia Clarke, Peter Dinklage, Kit Harington',
        "seasons": '8',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": 'Insecure',
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://i.pinimg.com/474x/52/1b/a2/521ba20d5e401ab06b2521c07db980da.jpg',
        # "release_date": 'nil'
        "network": 'HBO',
        "description": "Created by and starring Issa Rae, this comedy series looks at the friendship of two modern-day black women and all of their
        tribulations.",
        "starring": "Issa Rae, Yvonne Orji, Jay Ellis",
        "seasons": '4',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": 'Friends',
        "genre": 'Comedy',
        "is_movie": 'false',
        "image": 'https://images-na.ssl-images-amazon.com/images/I/81KANq2QSZL._AC_SY741_.jpg',
        # "release_date": 'nil'
        "network": 'NBC',
        "description": "Six young people, on their own and struggling to survive in the real world, find the companionship, comfort and support they
        get from each other to be the perfect antidote to the pressures of life.",
        "starring": 'Jennifer Aniston, Courteney Cox, Lisa Kudrow',
        "seasons": '10',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": "Sex and the City",
        "genre": 'Drama',
        "is_movie": 'false',
        "image": 'https://www.themoviedb.org/t/p/original/ktvj97y77yJCWZhFcYbAkzLrTAt.jpg',
        # "release_date": 'nil'
        "network": 'HBO',
        "description": "Four female New Yorkers gossip about their sex lives (or lack thereof) and find new ways to deal with being a woman in the late 1990s.",
        "starring": 'Sarah Jessica Parker, Kim Cattrall, Kristin Davis',
        "seasons": '6',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": 'South Park',
        "genre": 'Adult Animation',
        "is_movie": 'false',
        "image": 'https://cdn.shopify.com/s/files/1/0747/3829/products/mL0935_1024x1024.jpg?v=1571445244',
        # "release_date": 'nil'
        "network": 'Comedy Central',
        "description": "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
        "starring": 'Trey Parker, Matt Stone, Isaac Hayes',
        "seasons": '24',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": "Westworld",
        "genre": 'Western',
        "is_movie": 'false',
        "image": 'https://i.redd.it/krvjaf0a3jg41.jpg',
        # "release_date": 'nil'
        "network": 'HBO',
        "description": "Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.",
        "starring": 'Evan Rachel Wood,Jeffrey Wright, Ed Harris',
        "seasons": '3',
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": "Desperado",
        "genre": 'Action',
        "is_movie": 'true',
        "image": 'https://flxt.tmsimg.com/assets/p16804_p_v10_aa.jpg',
        "release_date": '1995',
        # "network": 'CW',
        "description": "Former musician and gunslinger El Mariachi arrives at a small Mexican border town after being away for a long time. His past quickly catches up with him and he soon gets entangled with the local drug kingpin Bucho and his gang.",
        "starring": 'Antonio Banderas, Salma Hayek, Joaquim de Almeida',
        platform_id: Platform.find_by(:company => 'HBO Max').id
        # "seasons": 

    },
    {
        "title": 'Joker',
        "genre": 'Crime',
        "is_movie": 'true',
        "image": 'https://m.media-amazon.com/images/I/71H4EDEfcwL._AC_.jpg',
        "release_date": '2019',
        # "network": 'CW',
        "description": "In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.",
        "starring": 'Joaquin Phoenix, Robert De Niro, Zazie Beetz',
        platform_id: Platform.find_by(:company => 'HBO Max').id
        # "seasons": '8'

    },
    {
        "title": 'Spies in Disguise',
        "genre": 'Animation',
        "is_movie": 'true',
        "image": 'https://lumiere-a.akamaihd.net/v1/images/image_23120c18.jpeg',
        "release_date": '2019',
        # "network": 'FOX',
        "description": "When the world's best spy is turned into a pigeon, he must rely on his nerdy tech officer to save the world.",
        "starring": 'Will Smith, Reba McEntire, Tom Holland',
        platform_id: Platform.find_by(:company => 'HBO Max').id
        # "seasons": '7'

    },
    {
        "title": "Ella Enchanted",
        "genre": 'Fantasy',
        "is_movie": 'true',
        "image": 'https://flxt.tmsimg.com/assets/p33298_p_v8_ad.jpg',
        "release_date": '2004',
        # "network": 'ABC',
        "description": "Ella is under a spell to be constantly obedient, a fact she must hide from her new stepfamily in order to protect the prince of the land, her friend for whom she's falling.",
        "starring": "Anne Hathaway, Hugh Dancy, Cary Elwes",
        # "seasons": '16'
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": 'Godzilla vs. Kong',
        "genre": 'Sci-Fi/Action',
        "is_movie": 'true',
        "image": 'https://mlpnk72yciwc.i.optimole.com/cqhiHLc.WqA8~2eefa/w:600/h:888/q:75/https://bleedingcool.com/wp-content/uploads/2021/03/godzilla_vs_kong_ver12_xlg.jpg',
        "release_date": '2021',
        # "network": 'Netflix Originals',
        "description": "The epic next chapter in the cinematic Monsterverse pits two of the greatest icons in motion picture history against one another - the fearsome Godzilla and the mighty Kong - with humanity caught in the balance.",
        "starring": 'Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall',
        # "seasons": '7'
        platform_id: Platform.find_by(:company => 'HBO Max').id

    },
    {
        "title": 'A Star is Born',
        "genre": 'Musical',
        "is_movie": 'true',
        "image": 'https://cdn.shopify.com/s/files/1/1878/3879/products/N4500.jpg?v=1556036171',
        "release_date": '2018',
        # "network": 'Netflix Originals',
        "description": "Hard-drinking country music star Jackson Maine discovers -- and falls in love with -- a struggling but talented singer named
        Ally. As her career quickly takes off, Jackson starts to realize that his best days may be behind him.",
        "starring": 'Lady Gaga, Bradley Cooper, Sam Elliot',
        platform_id: Platform.find_by(:company => 'HBO Max').id
    }
]

Medium.create(media)

puts 'Great job Ange'

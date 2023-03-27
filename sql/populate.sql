--
-- Products
--
INSERT IGNORE INTO `Products` (`Title`, `ReleaseDate`, `SalePrice`, `RentalPrice`) VALUES
("300", "2007-03-09", 13.99, 3.99),
("Boy's a liar", "2023-02-12", 12.99, 2.99),
("Drama", "2018-11-02", 12.99, 2.99),
("Dunkirk", "2017-07-21", 19.99, 9.99),
("Flight's Booked", "2022-01-07", 12.99, 2.99),
("Forrest Gump", "1994-07-06", 19.99, 9.99),
("Friends with benefits", "2018-12-12", 12.99, 2.99),
("Get you", "2016-12-01", 12.99, 2.99),
("How To Train Your Dragon", "2010-03-26", 12.99, 2.99),
("Interstellar", "2014-11-07", 17.99, 7.99),
("Kill Bill", "2022-12-12", 12.99, 2.99),
("Price of fame", "2022-01-24", 12.99, 2.99),
("Pyramids", "2018-10-30", 12.99, 2.99),
("She's out of my league", "2010-03-12", 15.99, 5.99),
("Slow dancing in the dark", "2018-09-12", 13.99, 3.99),
("Sugar", "2020-02-17", 12.99, 2.99),
("The Dark Knight", "2008-07-18", 21.99, 11.99),
("The Departed", "2006-10-06", 17.99, 7.99),
("The Shawshank Redemption", "1994-09-22", 19.99, 9.99),
("White man can't jump", "1992-03-27", 14.99, 4.99);

--
-- Movies
--
INSERT IGNORE INTO `Movies` (`Title`, `ReleaseDate`, `Description`) VALUES
("300", "2007-03-09", "King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C."),
("Dunkirk", "2017-07-21", "Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II."),
("Forrest Gump", "1994-07-06", "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart."),
("How To Train Your Dragon", "2010-03-26", "A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed."),
("Interstellar", "2014-11-07", "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival."),
("She's out of my league", "2010-03-12", "An average Joe meets the perfect woman, but his lack of confidence and the influence of his friends and family begin to pick away at the relationship."),
("The Dark Knight", "2008-07-18", "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice."),
("The Departed", "2006-10-06", "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston."),
("The Shawshank Redemption", "1994-09-22", "Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion."),
("White man can't jump", "1992-03-27", "Black and white basketball hustlers join forces to double their chances of winning money on the street courts and in a basketball tournament.");

--
-- Genres
--
INSERT IGNORE INTO `Genres` (`Title`, `ReleaseDate`, `Genre`) VALUES
("300", "2007-03-09", "Action"),
("300", "2007-03-09", "Drama"),
("300", "2007-03-09", "War"),
("Dunkirk", "2017-07-21", "Action"),
("Dunkirk", "2017-07-21", "Drama"),
("Dunkirk", "2017-07-21", "History"),
("Forrest Gump", "1994-07-06", "Comedy"),
("Forrest Gump", "1994-07-06", "Drama"),
("Forrest Gump", "1994-07-06", "Romance"),
("How To Train Your Dragon", "2010-03-26", "Action"),
("How To Train Your Dragon", "2010-03-26", "Adventure"),
("How To Train Your Dragon", "2010-03-26", "Animation"),
("Interstellar", "2014-11-07", "Adventure"),
("Interstellar", "2014-11-07", "Drama"),
("Interstellar", "2014-11-07", "Sci-Fi"),
("She's out of my league", "2010-03-12", "Comedy"),
("She's out of my league", "2010-03-12", "Romance"),
("The Dark Knight", "2008-07-18", "Action"),
("The Dark Knight", "2008-07-18", "Crime"),
("The Dark Knight", "2008-07-18", "Drama"),
("The Dark Knight", "2008-07-18", "Noir"),
("The Departed", "2006-10-06", "Crime"),
("The Departed", "2006-10-06", "Drama"),
("The Departed", "2006-10-06", "Thriller"),
("The Shawshank Redemption", "1994-09-22", "Crime"),
("The Shawshank Redemption", "1994-09-22", "Drama"),
("The Shawshank Redemption", "1994-09-22", "Mystery"),
("White man can't jump", "1992-03-27", "Comedy"),
("White man can't jump", "1992-03-27", "Sport");

--
-- ProductionCompanies
--
INSERT IGNORE INTO `ProductionCompanies` (`Title`, `ReleaseDate`, `CompanyName`) VALUES
("300", "2007-03-09", "Atmosphere Entertainment MM"),
("300", "2007-03-09", "Cruel and Unusual Films"),
("300", "2007-03-09", "Hollywood Gang Productions"),
("300", "2007-03-09", "Legendary Pictures"),
("300", "2007-03-09", "Virtual Studios"),
("300", "2007-03-09", "Warner Bros. Pictures"),
("Dunkirk", "2017-07-21", "Canal+"),
("Dunkirk", "2017-07-21", "Ciné+"),
("Dunkirk", "2017-07-21", "RatPac-Dune Entertainment"),
("Dunkirk", "2017-07-21", "StudioCanal"),
("Dunkirk", "2017-07-21", "Syncopy"),
("Dunkirk", "2017-07-21", "Warner Bros. Pictures"),
("Forrest Gump", "1994-07-06", "Paramount Pictures"),
("Forrest Gump", "1994-07-06", "The Tisch Company"),
("How To Train Your Dragon", "2010-03-26", "DreamWorks Pictures"),
("How To Train Your Dragon", "2010-03-26", "Paramount Pictures"),
("Interstellar", "2014-11-07", "Legendary Pictures"),
("Interstellar", "2014-11-07", "Lynda Obst Productions"),
("Interstellar", "2014-11-07", "Paramount Pictures"),
("Interstellar", "2014-11-07", "Syncopy"),
("She's out of my league", "2010-03-12", "DreamWorks Pictures"),
("She's out of my league", "2010-03-12", "Mosaic Media Group"),
("She's out of my league", "2010-03-12", "Paramount Pictures"),
("The Dark Knight", "2008-07-18", "Legendary Pictures"),
("The Dark Knight", "2008-07-18", "Syncopy"),
("The Dark Knight", "2008-07-18", "Warner Bros. Pictures"),
("The Departed", "2006-10-06", "Initial Entertainment Group"),
("The Departed", "2006-10-06", "Media Asia Films"),
("The Departed", "2006-10-06", "Plan B Entertainment"),
("The Departed", "2006-10-06", "Vertigo Entertainment"),
("The Departed", "2006-10-06", "Warner Bros. Pictures"),
("The Shawshank Redemption", "1994-09-22", "Castle Rock Entertainment"),
("The Shawshank Redemption", "1994-09-22", "Columbia Pictures"),
("White man can't jump", "1992-03-27", "20th Century Fox");

--
-- CastAndCrew
--
INSERT IGNORE INTO `CastAndCrew` (`Title`, `ReleaseDate`, `Name`, `Role`) VALUES
("300", "2007-03-09", "David Wenham", "Starring"),
("300", "2007-03-09", "Dominic West", "Starring"),
("300", "2007-03-09", "Gerard Butler", "Starring"),
("300", "2007-03-09", "Kurt Johnstad", "Screenplay by"),
("300", "2007-03-09", "Larry Fong", "Cinematography"),
("300", "2007-03-09", "Lena Headey", "Starring"),
("300", "2007-03-09", "Michael B. Gordon", "Screenplay by"),
("300", "2007-03-09", "Michael Fassbender", "Starring"),
("300", "2007-03-09", "Tyler Bates", "Music by"),
("300", "2007-03-09", "William Hoy", "Edited by"),
("300", "2007-03-09", "Zack Snyder", "Directed by"),
("300", "2007-03-09", "Zack Snyder", "Screenplay by"),
("Dunkirk", "2017-07-21", "Aneurin Barnard", "Starring"),
("Dunkirk", "2017-07-21", "Barry Keoghan", "Starring"),
("Dunkirk", "2017-07-21", "Christopher Nolan", "Directed"),
("Dunkirk", "2017-07-21", "Christopher Nolan", "Produced"),
("Dunkirk", "2017-07-21", "Christopher Nolan", "Screenplay"),
("Dunkirk", "2017-07-21", "Cillian Murphy", "Starring"),
("Dunkirk", "2017-07-21", "Emma Thomas", "Produced"),
("Dunkirk", "2017-07-21", "Fionn Whitehead", "Starring"),
("Dunkirk", "2017-07-21", "Hans Zimmer", "Music by"),
("Dunkirk", "2017-07-21", "Harry Styles", "Starring"),
("Dunkirk", "2017-07-21", "Hoyte van Hoytema", "Cinematography"),
("Dunkirk", "2017-07-21", "Jack Lowden", "Starring"),
("Dunkirk", "2017-07-21", "James D'Arcy", "Starring"),
("Dunkirk", "2017-07-21", "Kenneth Branagh", "Starring"),
("Dunkirk", "2017-07-21", "Lee Smith", "Edited by"),
("Dunkirk", "2017-07-21", "Mark Rylance", "Starring"),
("Dunkirk", "2017-07-21", "Tom Glynn-Carney", "Starring"),
("Dunkirk", "2017-07-21", "Tom Hardy", "Starring"),
("Forrest Gump", "1994-07-06", "Alan Silvestri", "Composer"),
("Forrest Gump", "1994-07-06", "Arthur Schmidt", "Editor"),
("Forrest Gump", "1994-07-06", "Don Burgess", "Cinematographor"),
("Forrest Gump", "1994-07-06", "Eric Roth", "Writer"),
("Forrest Gump", "1994-07-06", "Gary Sinise", "Actor"),
("Forrest Gump", "1994-07-06", "Mykelti Williamson", "Actor"),
("Forrest Gump", "1994-07-06", "Robert Zemeckis", "Director"),
("Forrest Gump", "1994-07-06", "Robin Wright", "Actor"),
("Forrest Gump", "1994-07-06", "Sally Field", "Actor"),
("Forrest Gump", "1994-07-06", "Steve Starkey", "Producer"),
("Forrest Gump", "1994-07-06", "Steve Tisch", "Producer"),
("Forrest Gump", "1994-07-06", "Tom Hanks", "Actor"),
("Forrest Gump", "1994-07-06", "Wendy Finerman", "Producer"),
("How To Train Your Dragon", "2010-03-26", "America Ferrera", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Bonnie Arnold", "Produced by"),
("How To Train Your Dragon", "2010-03-26", "Chris Sanders", "Directed by"),
("How To Train Your Dragon", "2010-03-26", "Chris Sanders", "Screenplay by"),
("How To Train Your Dragon", "2010-03-26", "Christopher Mintz-Plasse", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Craig Ferguson", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Darren Holmes", "Edited by"),
("How To Train Your Dragon", "2010-03-26", "Dean DeBlois", "Directed by"),
("How To Train Your Dragon", "2010-03-26", "Dean DeBlois", "Screenplay by"),
("How To Train Your Dragon", "2010-03-26", "Gerard Butler", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Jay Baruchel", "Starring"),
("How To Train Your Dragon", "2010-03-26", "John Powell", "Music by"),
("How To Train Your Dragon", "2010-03-26", "Jonah Hill", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Kristen Wiig", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Maryann Brandon", "Edited by"),
("How To Train Your Dragon", "2010-03-26", "Roger Deakins", "Cinematography"),
("How To Train Your Dragon", "2010-03-26", "T.J. Miller", "Starring"),
("How To Train Your Dragon", "2010-03-26", "Will Davies", "Screenplay by"),
("Interstellar", "2014-11-07", "Anne Hathaway", "Starring"),
("Interstellar", "2014-11-07", "Bill Irwin", "Starring"),
("Interstellar", "2014-11-07", "Christopher Nolan", "Directed by"),
("Interstellar", "2014-11-07", "Christopher Nolan", "Produced by"),
("Interstellar", "2014-11-07", "Christopher Nolan", "Screenplay by"),
("Interstellar", "2014-11-07", "Ellen Burstyn", "Starring"),
("Interstellar", "2014-11-07", "Emma Thomas", "Produced by"),
("Interstellar", "2014-11-07", "Hans Zimmer", "Music by"),
("Interstellar", "2014-11-07", "Hoyte van Hoytema", "Cinematography"),
("Interstellar", "2014-11-07", "Jessica Chastain", "Starring"),
("Interstellar", "2014-11-07", "Jonathan Nolan", "Screenplay by"),
("Interstellar", "2014-11-07", "Lee Smith", "Edited by"),
("Interstellar", "2014-11-07", "Lynda Obst", "Produced by"),
("Interstellar", "2014-11-07", "Matthew McConaughey", "Starring"),
("Interstellar", "2014-11-07", "Michael Caine", "Starring"),
("She's out of my league", "2010-03-12", " T.J. Miller", "Starring"),
("She's out of my league", "2010-03-12", "Alice Eve", "Starring"),
("She's out of my league", "2010-03-12", "Dan Schalk", "Edited by"),
("She's out of my league", "2010-03-12", "David Householter", "Produced by"),
("She's out of my league", "2010-03-12", "Geoff Stults", "Starring"),
("She's out of my league", "2010-03-12", "Jay Baruchel", "Starring"),
("She's out of my league", "2010-03-12", "Jim Deanult", "Cinematography"),
("She's out of my league", "2010-03-12", "Jim Field Smith", "Directed by"),
("She's out of my league", "2010-03-12", "Jimmy Miller", "Produced by"),
("She's out of my league", "2010-03-12", "Krysten Ritter", "Starring"),
("She's out of my league", "2010-03-12", "Lindsay Sloane", "Starring"),
("She's out of my league", "2010-03-12", "Michael Andrews", "Music by"),
("She's out of my league", "2010-03-12", "Mike Vogel", "Starring"),
("She's out of my league", "2010-03-12", "Nate Torrence", "Starring"),
("She's out of my league", "2010-03-12", "William Monahan", "Screenplay by"),
("The Dark Knight", "2008-07-18", "Aaron Eckhart", "Starring"),
("The Dark Knight", "2008-07-18", "Charles Roven", "Produced by"),
("The Dark Knight", "2008-07-18", "Christian Bale", "Starring"),
("The Dark Knight", "2008-07-18", "Christopher Nolan", "Directed by"),
("The Dark Knight", "2008-07-18", "Christopher Nolan", "Produced by"),
("The Dark Knight", "2008-07-18", "Christopher Nolan", "Screenplay by"),
("The Dark Knight", "2008-07-18", "Emma Thomas", "Produced by"),
("The Dark Knight", "2008-07-18", "Gary Oldma", "Starring"),
("The Dark Knight", "2008-07-18", "Hans Zimmer", "Music by"),
("The Dark Knight", "2008-07-18", "Heath Ledger", "Starring"),
("The Dark Knight", "2008-07-18", "James Newton Howard", "Music by"),
("The Dark Knight", "2008-07-18", "Jonathan Nolan", "Screenplay by"),
("The Dark Knight", "2008-07-18", "Lee Smith", "Edited by"),
("The Dark Knight", "2008-07-18", "Maggie Gyllenhaal", "Starring"),
("The Dark Knight", "2008-07-18", "Michael Caine", "Starring"),
("The Dark Knight", "2008-07-18", "Morgan Freeman", "Starring"),
("The Dark Knight", "2008-07-18", "Wally Pfister", "Cinematography"),
("The Departed", "2006-10-06", "Alec Baldwin", "Starring"),
("The Departed", "2006-10-06", "Brad Grey", "Produced by"),
("The Departed", "2006-10-06", "Brad Pitt", "Produced by"),
("The Departed", "2006-10-06", "Gianni Nunnari", "Produced by"),
("The Departed", "2006-10-06", "Graham King", "Produced by"),
("The Departed", "2006-10-06", "Howard Shore", "Music by"),
("The Departed", "2006-10-06", "Jack Nicholson", "Starring"),
("The Departed", "2006-10-06", "Leonardo DiCaprio", "Starring"),
("The Departed", "2006-10-06", "Mark Wahlberg", "Starring"),
("The Departed", "2006-10-06", "Martin Scorsese", "Directed by"),
("The Departed", "2006-10-06", "Martin Sheen", "Starring"),
("The Departed", "2006-10-06", "Matt Damon", "Starring"),
("The Departed", "2006-10-06", "Michael Ballhaus", "Cinematography"),
("The Departed", "2006-10-06", "Ray Winstone", "Starring"),
("The Departed", "2006-10-06", "Thelma Schoonmaker", "Edited by"),
("The Departed", "2006-10-06", "Vera Farmiga", "Starring"),
("The Departed", "2006-10-06", "William Monahan", "Screenplay by"),
("The Shawshank Redemption", "1994-09-22", "Bob Gunton", "Starring"),
("The Shawshank Redemption", "1994-09-22", "Clancy Brown", "Starring"),
("The Shawshank Redemption", "1994-09-22", "Frank Darabont", "Directed by"),
("The Shawshank Redemption", "1994-09-22", "Frank Darabont", "Screenplay by"),
("The Shawshank Redemption", "1994-09-22", "Gil Bellows", "Starring"),
("The Shawshank Redemption", "1994-09-22", "James Whitmore", "Starring"),
("The Shawshank Redemption", "1994-09-22", "Morgan Freeman", "Starring"),
("The Shawshank Redemption", "1994-09-22", "Niki Marvin", "Produced by"),
("The Shawshank Redemption", "1994-09-22", "Richard Francis-Bruce", "Edited by,"),
("The Shawshank Redemption", "1994-09-22", "Roger Deakins", "Cinematography"),
("The Shawshank Redemption", "1994-09-22", "Thomas Newman", "Music by"),
("The Shawshank Redemption", "1994-09-22", "Tim Robbins", "Starring"),
("The Shawshank Redemption", "1994-09-22", "William Sadler", "Starring"),
("White man can't jump", "1992-03-27", "Bennie Wallace", "Music by"),
("White man can't jump", "1992-03-27", "David V. Lester", "Produced by"),
("White man can't jump", "1992-03-27", "Don Miller", "Produced by"),
("White man can't jump", "1992-03-27", "Kimberly Ray", "Edited by"),
("White man can't jump", "1992-03-27", "Michelle Rappaport", "Produced by"),
("White man can't jump", "1992-03-27", "Paul Seydor", "Edited by"),
("White man can't jump", "1992-03-27", "Ron Shelton", "Directed by"),
("White man can't jump", "1992-03-27", "Ron Shelton", "Screenplay by"),
("White man can't jump", "1992-03-27", "Rosie Perezr", "Starring"),
("White man can't jump", "1992-03-27", "Russell Boyd", "Cinematography"),
("White man can't jump", "1992-03-27", "Wesley Snipes", "Starring"),
("White man can't jump", "1992-03-27", "Woody Harrelson", "Starring");

--
-- Music
--
INSERT IGNORE INTO `Music` (`Title`, `ReleaseDate`, `Album`) VALUES
("Boy's a liar", "2023-02-12", NULL),
("Drama", "2018-11-02", "Volume 1"),
("Flight's Booked", "2022-01-07", "Honestly Nevermind"),
("Friends with benefits", "2018-12-12", "I told you"),
("Get you", "2016-12-01", NULL),
("Kill Bill", "2022-12-12", "SOS"),
("Price of fame", "2022-01-24", "Waste Land"),
("Pyramids", "2018-10-30", "Channel Orange"),
("Slow dancing in the dark", "2018-09-12", "Smithereens"),
("Sugar", "2020-02-17", "GINGER");

--
-- Labels
--
INSERT IGNORE INTO `Labels` (`Title`, `ReleaseDate`, `LabelName`) VALUES
("Boy's a liar", "2023-02-12", "PLG UK Frontline"),
("Drama", "2018-11-02", "Atlantic Records"),
("Flight's Booked", "2022-01-07", "Republic Records"),
("Friends with benefits", "2018-12-12", "Interscope Records"),
("Get you", "2016-12-01", "Republic records"),
("Kill Bill", "2022-12-12", "Top Dawg Entertainment"),
("Price of fame", "2022-01-24", "Lost KiDs"),
("Pyramids", "2018-10-30", "The Island Def Music Group"),
("Slow dancing in the dark", "2018-09-12", "88Rising"),
("Sugar", "2020-02-17", "RCA records");

--
-- Artists
--
INSERT IGNORE INTO `Artists` (`Title`, `ReleaseDate`, `ArtistName`) VALUES
("Boy's a liar", "2023-02-12", "Ice Spice"),
("Boy's a liar", "2023-02-12", "PinkPantheress"),
("Drama", "2018-11-02", "Pink Sweat$"),
("Flight's Booked", "2022-01-07", "Drake"),
("Friends with benefits", "2018-12-12", "Tory Lanez"),
("Get you", "2016-12-01", "Daniel Caesar"),
("Get you", "2016-12-01", "Kali Uchis"),
("Kill Bill", "2022-12-12", "SZA"),
("Price of fame", "2022-01-24", "Brent Faiyaz"),
("Pyramids", "2018-10-30", "Frank Ocean"),
("Slow dancing in the dark", "2018-09-12", "Joji"),
("Sugar", "2020-02-17", "BROCKHAMPTON");

--
-- Stores
--
INSERT IGNORE INTO `Stores` (`StoreId`, `Phone`, `Email`, `StreetName`, `Unit`, `City`, `Province`, `Country`, `PostalCode`) VALUES
(1, "6475551111", "store1@company-email.com", "15 Bilal Rd", NULL, "Waterloo", "ON", "CA", "N2J 0B1"),
(2, "6475552222", "store2@company-email.com", "16 Donald Crescent", NULL, "Kitchener", "ON", "CA", "N2J 0B2"),
(3, "6475553333", "store3@company-email.com", "17 Keeper Rd", NULL, "Cambridge", "ON", "CA", "N2J 0B3"),
(4, "6475554444", "store4@company-email.com", "18 Glen Dr", NULL, "Kitchener", "ON", "CA", "N2J 0B4"),
(5, "6475555555", "store5@company-email.com", "19 Orange Blvd", NULL, "Waterloo", "ON", "CA", "N2J 0B5");

--
-- Suppliers
--
INSERT IGNORE INTO `Suppliers` (`SupplierId`, `SupplierName`, `Phone`, `Email`, `StreetName`, `Unit`, `City`, `Province`, `Country`, `PostalCode`) VALUES
(1, "Blockerbuster", "519-555-1111", "customer-service@blockbuster.ca", "15 Ion Dr", NULL, "Waterloo", "ON", "CA", "N2K 1C1"),
(2, "Equipped", "519-555-2222", "customer-service@equipped.ca", "16 Ion Dr", NULL, "Waterloo", "ON", "CA", "N2K 1C2"),
(3, "Ultimate Drip", "519-555-3333", "customer-service@ultimatedrip.ca", "17 Ion Dr", NULL, "Waterloo", "ON", "CA", "N2K 1C3"),
(4, "Suicide Records", "519-555-4444", "customer-service@suiciderecords.ca", "18 Soup Dr, Kitchener", NULL, "Kitchener", "ON", "CA", "N2K 1C4"),
(5, "2001 Videos", "519-555-5555", "customer-service@2001videos.ca", "19 Soup Dr, Kitchener", NULL, "Kitchener", "ON", "CA", "N2K 1C5"),
(6, "Vinyl Records", "519-555-6666", "customer-service@vinylrecords.ca", "20 Soup Dr, Kitchener", NULL, "Kitchener", "ON", "CA", "N2K 1C6"),
(7, "Oscar Co", "519-555-7777", "customer-service@oscar_company.ca", "21 Flat Rd", NULL, "Cambridge", "ON", "CA", "N2K 1C7"),
(8, "Smart Tunes", "519-555-8888", "customer-service@smart_tunes.ca", "22 Flat Rd", NULL, "Cambridge", "ON", "CA", "N2K 1C8"),
(9, "Disc Services", "519-555-9999", "customer-service@disc_services.ca", "23 Flat Rd", NULL, "Cambridge", "ON", "CA", "N2K 1C9"),
(10, "Paid Services", "519-555-1010", "customer-service@paid_services.ca", "24 Soup Blvd", NULL, "Kitchener", "ON", "CA", "N2K 2C1"),
(11, "Tape Recorder Inc.", "519-555-1100", "customer-service@taperecorder.ca", "25 Soup Blvd", NULL, "Kitchener", "ON", "CA", "N2K 2C2"),
(12, "Tunes Co.", "519-555-1212", "customer-service@tunes_company.ca", "26 Soup Blvd", NULL, "Kitchener", "ON", "CA", "N2K 2C3"),
(13, "Wright Brothers Ltd.", "519-555-1313", "customer-service@wrightbrothers.ca", "27 Flanders Dr", NULL, "Waterloo", "ON", "CA", "N2K 2C4"),
(14, "VHS Records", "519-555-1414", "customer-service@vhsrecords.ca", "28 Flanders Dr", NULL, "Waterloo", "ON", "CA", "N2K 2C5"),
(15, "Melody Inc.", "519-555-1515", "customer-service@melody.ca", "29 Flanders Dr", NULL, "Waterloo", "ON", "CA", "N2K 2C6");

--
-- SuppliesTo
--
INSERT IGNORE INTO `SuppliesTo` (`SupplierId`, `StoreId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5);

--
-- Employees
--
INSERT IGNORE INTO `Employees` (`EmployeeId`, `Name`, `Phone`, `Email`, `StreetName`, `Unit`, `City`, `Province`, `Country`, `PostalCode`, `DOB`, `StoreId`) VALUES
(1, "Nick Caraway", "905-555-1111", "nickcaraway@company.com", "15 Employee Crescent", NULL, "Waterloo", "ON", "CA", "N2L 2D1", "1925-04-10", 1),
(2, "Mark Watney", "905-555-2222", "markwatney@company.com", "16 Employee Crescent", NULL, "Waterloo", "ON", "CA", "N2L 2D2", "2011-04-03", 1),
(3, "Effie Trinket", "905-555-3333", "effietrinket@company.com", "15 Employee Dr", NULL, "Kitchener", "ON", "CA", "N2L 2D3", "2074-02-10", 2),
(4, "Cedric Diggory", "905-555-4444", "cedricdiggory@company.com", "16 Employee Dr", NULL, "Kitchener", "ON", "CA", "N2L 2D4", "1977-06-24", 2),
(5, "Frodo Baggins", "905-555-5555", "frodobaggins@company.com", "15 Employee St", NULL, "Cambridge", "ON", "CA", "N2L 2D5", "1094-09-22", 3),
(6, "Maudie Atkinson", "905-555-6666", "maudieatkinson@company.com", "16 Employee St", NULL, "Cambridge", "ON", "CA", "N2L 2D6", "1889-02-28", 3),
(7, "Jack Crawford", "905-555-7777", "jackcrawford@company.com", "15 Employee Ct", NULL, "Kitchener", "ON", "CA", "N2L 2D7", "1981-10-21", 4),
(8, "Simon Peters", "905-555-8888", "simonpeters@company.com", "16 Employee Ct", NULL, "Kitchener", "ON", "CA", "N2L 2D8", "1954-09-17", 4),
(9, "Teresa Agnes", "905-555-9999", "teresaagnes@company.com", "15 Employee Blvd", NULL, "Waterloo", "ON", "CA", "N2L 2D9", "1992-03-13", 5),
(10, "Annabeth Chase", "905-555-1010", "annabethchase@company.com", "16 Employee Blvd", NULL, "Waterloo", "ON", "CA", "N2L 3D1", "1993-07-12", 5);

--
-- Inventory
--
INSERT IGNORE INTO `Inventory` (`Copies`, `ProductTitle`, `ProductReleaseDate`, `StoreId`) VALUES
(15, "300", "2007-03-09", 1),
(15, "300", "2007-03-09", 2),
(15, "300", "2007-03-09", 3),
(15, "300", "2007-03-09", 4),
(15, "300", "2007-03-09", 5),
(15, "Boy's a liar", "2023-02-12", 1),
(15, "Boy's a liar", "2023-02-12", 2),
(15, "Boy's a liar", "2023-02-12", 3),
(15, "Boy's a liar", "2023-02-12", 4),
(15, "Boy's a liar", "2023-02-12", 5),
(15, "Drama", "2018-11-02", 1),
(15, "Drama", "2018-11-02", 2),
(15, "Drama", "2018-11-02", 3),
(15, "Drama", "2018-11-02", 4),
(15, "Drama", "2018-11-02", 5),
(15, "Dunkirk", "2017-07-21", 1),
(15, "Dunkirk", "2017-07-21", 2),
(15, "Dunkirk", "2017-07-21", 3),
(15, "Dunkirk", "2017-07-21", 4),
(15, "Dunkirk", "2017-07-21", 5),
(15, "Flight's Booked", "2022-01-07", 1),
(15, "Flight's Booked", "2022-01-07", 2),
(15, "Flight's Booked", "2022-01-07", 3),
(15, "Flight's Booked", "2022-01-07", 4),
(15, "Flight's Booked", "2022-01-07", 5),
(15, "Forrest Gump", "1994-07-06", 1),
(15, "Forrest Gump", "1994-07-06", 2),
(15, "Forrest Gump", "1994-07-06", 3),
(15, "Forrest Gump", "1994-07-06", 4),
(15, "Forrest Gump", "1994-07-06", 5),
(15, "Friends with benefits", "2018-12-12", 1),
(15, "Friends with benefits", "2018-12-12", 2),
(15, "Friends with benefits", "2018-12-12", 3),
(15, "Friends with benefits", "2018-12-12", 4),
(15, "Friends with benefits", "2018-12-12", 5),
(15, "Get you", "2016-12-01", 1),
(15, "Get you", "2016-12-01", 2),
(15, "Get you", "2016-12-01", 3),
(15, "Get you", "2016-12-01", 4),
(15, "Get you", "2016-12-01", 5),
(15, "How To Train Your Dragon", "2010-03-26", 1),
(15, "How To Train Your Dragon", "2010-03-26", 2),
(15, "How To Train Your Dragon", "2010-03-26", 3),
(15, "How To Train Your Dragon", "2010-03-26", 4),
(15, "How To Train Your Dragon", "2010-03-26", 5),
(15, "Interstellar", "2014-11-07", 1),
(15, "Interstellar", "2014-11-07", 2),
(15, "Interstellar", "2014-11-07", 3),
(15, "Interstellar", "2014-11-07", 4),
(15, "Interstellar", "2014-11-07", 5),
(15, "Kill Bill", "2022-12-12", 1),
(15, "Kill Bill", "2022-12-12", 2),
(15, "Kill Bill", "2022-12-12", 3),
(15, "Kill Bill", "2022-12-12", 4),
(15, "Kill Bill", "2022-12-12", 5),
(15, "Price of fame", "2022-01-24", 1),
(15, "Price of fame", "2022-01-24", 2),
(15, "Price of fame", "2022-01-24", 3),
(15, "Price of fame", "2022-01-24", 4),
(15, "Price of fame", "2022-01-24", 5),
(15, "Pyramids", "2018-10-30", 1),
(15, "Pyramids", "2018-10-30", 2),
(15, "Pyramids", "2018-10-30", 3),
(15, "Pyramids", "2018-10-30", 4),
(15, "Pyramids", "2018-10-30", 5),
(15, "She's out of my league", "2010-03-12", 1),
(15, "She's out of my league", "2010-03-12", 2),
(15, "She's out of my league", "2010-03-12", 3),
(15, "She's out of my league", "2010-03-12", 4),
(15, "She's out of my league", "2010-03-12", 5),
(15, "Slow dancing in the dark", "2018-09-12", 1),
(15, "Slow dancing in the dark", "2018-09-12", 2),
(15, "Slow dancing in the dark", "2018-09-12", 3),
(15, "Slow dancing in the dark", "2018-09-12", 4),
(15, "Slow dancing in the dark", "2018-09-12", 5),
(15, "Sugar", "2020-02-17", 1),
(15, "Sugar", "2020-02-17", 2),
(15, "Sugar", "2020-02-17", 3),
(15, "Sugar", "2020-02-17", 4),
(15, "Sugar", "2020-02-17", 5),
(15, "The Dark Knight", "2008-07-18", 1),
(15, "The Dark Knight", "2008-07-18", 2),
(15, "The Dark Knight", "2008-07-18", 3),
(15, "The Dark Knight", "2008-07-18", 4),
(15, "The Dark Knight", "2008-07-18", 5),
(15, "The Departed", "2006-10-06", 1),
(15, "The Departed", "2006-10-06", 2),
(15, "The Departed", "2006-10-06", 3),
(15, "The Departed", "2006-10-06", 4),
(15, "The Departed", "2006-10-06", 5),
(15, "The Shawshank Redemption", "1994-09-22", 1),
(15, "The Shawshank Redemption", "1994-09-22", 2),
(15, "The Shawshank Redemption", "1994-09-22", 3),
(15, "The Shawshank Redemption", "1994-09-22", 4),
(15, "The Shawshank Redemption", "1994-09-22", 5),
(15, "White man can't jump", "1992-03-27", 1),
(15, "White man can't jump", "1992-03-27", 2),
(15, "White man can't jump", "1992-03-27", 3),
(15, "White man can't jump", "1992-03-27", 4),
(15, "White man can't jump", "1992-03-27", 5);

--
-- Customers
--
INSERT IGNORE INTO `Customers` (`Name`, `Email`, `Phone`, `DOB`, `StreetName`, `Unit`, `City`, `Province`, `Country`, `PostalCode`, `MemberPoints`) VALUES
("Anna Clifford", "annaclifford@gmail.com", "416-555-7777", "2002-01-28", "21 Keewatin Ave", NULL, "Waterloo", "ON", "CA", "N2M 3E7", 100),
("Christine Sutter", "christinesutter@gmail.com", "416-555-1313", "1966-09-18", "27 Griffin St", NULL, "Waterloo", "ON", "CA", "N2M 4E4", 100),
("Corey Wegg", "coreywegg@gmail.com", "416-555-1111", "1974-06-28", "15 Danfield St", NULL, "Waterloo", "ON", "CA", "N2M 3E1", 1000),
("Dredon Sautre", "dredonsautre@gmail.com", "416-555-1100", "2001-12-24", "25 Phillip St", NULL, "Cambridge", "ON", "CA", "N2M 4E2", 100),
("Jackson Larmer", "jacksonlarmer@gmail.com", "416-555-6666", "2003-01-01", "20 Millwood Rd", NULL, "Cambridge", "ON", "CA", "N2M 3E6", 100),
("James Pratt", "jamespratt@gmail.com", "416-555-3333", "1989-08-17", "17 Queen Rd", NULL, "Kitchener", "ON", "CA", "N2M 3E3", 100),
("Jordan Mallory", "jordanmallory@gmail.com", "416-555-8888", "1948-03-04", "22  Ferris Rd", NULL, "Waterloo", "ON", "CA", "N2M 3E8", 100),
("Josh Gu", "joshgu@gmail.com", "416-555-1515", "2004-03-11", "29 Sheppard Ave", NULL, "Kitchener", "ON", "CA", "N2M 4E6", 100),
("Marian Davido", "mariandavido@gmail.com", "416-555-1414", "1999-01-10", "28 Miller Trail", NULL, "Waterloo", "ON", "CA", "N2M 4E5", 100),
("Max DeCicco", "maxdecicco@gmail.com", "416-555-9999", "1988-07-31", "23 Presley Ave", NULL, "Kithener", "ON", "CA", "N2M 3E9", 100),
("Milly Swan", "millyswan@gmail.com", "416-555-4444", "2000-05-31", "18 Overlea Dr,", NULL, "Kithener", "ON", "CA", "N2M 3E4", 100),
("Nick Ponder", "nickponder@gmail.com", "416-555-1212", "1928-11-07", "26 Cliffside Dr", NULL, "Cambridge", "ON", "CA", "N2M 4E3", 100),
("Sarah Massie", "sarahmassie@gmail.com", "416-555-2222", "2001-07-13", "16 King St", NULL, "Waterloo", "ON", "CA", "N2M 3E2", 100),
("Sydney King", "sydneyking@gmail.com", "416-555-1010", "1967-08-08", "24 Westbourne Ave", NULL, "Kithener", "ON", "CA", "N2M 4E1", 100),
("Timothy Tran", "timothytran@gmail.com", "416-555-5555", "1958-04-16", "19 Dyer Blvd", NULL, "Cambridge", "ON", "CA", "N2M 3E5", 100);

--
-- Rank
--
INSERT IGNORE INTO `Rank` (`MemberPoints`, `MemberRank`) VALUES
(1000, "Silver"),
(5000, "Gold"),
(10000, "Platinum");

--
-- TransactionInfo
--
INSERT IGNORE INTO `TransactionInfo` (`SaleId`, `TimeInit`, `TotalPrice`, `PaymentType`, `CustomerEmail`) VALUES
(1, "2015-06-28 15:00:00", 19.99, "Cash", "coreywegg@gmail.com"),
(2, "2018-12-17 13:09:00", 17.99, "Credit", "sydneyking@gmail.com"),
(3, "2023-01-05 23:59:59", 2.99, "Credit", "coreywegg@gmail.com"),
(4, "2019-08-01 23:59:59", 2.99, "Cash", "jamespratt@gmail.com");

--
-- TransactionItems
--
INSERT IGNORE INTO `TransactionItems` (`SaleId`, `ProductTitle`, `ProductReleaseDate`) VALUES
(1, "Forrest Gump", "1994-07-06"),
(2, "The Departed", "2006-10-06"),
(3, "Price of fame", "2022-01-24"),
(4, "Friends with Benefits", "2018-12-12");

-- Rentals
--
INSERT IGNORE INTO `Rentals` (`SaleId`, `ProductTitle`, `ProductReleaseDate`, `RentalId`, `Status`, `ReturnDate`, `TimeReturned`) VALUES
(3, "Price of fame", "2022-01-24", 1, "Returned", "2023-01-05 23:59:59", "2023-01-03 13:01:40"),
(4, "Friends with Benefits", "2018-12-12", 2, "Returned", "2018-08-01 23:59:59", "2018-08-01 13:05:35");

--
-- Reviews
--
INSERT IGNORE INTO `Reviews` (`ReviewerEmail`, `Comment`, `Rating`, `Title`, `ReleaseDate`) VALUES
("coreywegg@gmail.com", "Forrest Gump remains an American staple thanks to Tom Hanks' affecting performance and Robert Zemeckis' ability to canvass history with a galavanting story about patriotic perseverance and optimism.", 5, "Forrest Gump", "1994-07-06"),
("sydneyking@gmail.com", "Scorsese turns the clever cat-and-mouse story of two rival informants scrambling to save themselves from discovery, into a star-studded mob opera spiked with grimy underworld detail and juiced with adrenaline and suspicion.", 5, "The departed", "2006-10-06");
// Day 002 Complex data types

import UIKit

// 1.Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// 2.Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// 3.Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

// 4.Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// 5.Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

// 6.Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte"] ?? "Unknown"
favoriteIceCream["Charlotte", default: "Unknown"]

// 7.Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var number = Set<Int>()
var scores = Dictionary<String, Int>()
var results_array = Array<Int>()

// 8.Enumerations
let result1 = "failure"
let result2 = "failed"
let result3 = "fail"
enum Result {
    case success
    case failure
}
let result4 = Result.failure

// 9.Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talk = Activity.talking(topic: "swift")

// 10.Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)

// 11.Complex types: Summary
    /* Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
        Arrays store items in the order you add them, and you access them using numerical positions.
        Sets store items without any order, so you can’t access them using numerical positions.
        Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
        Dictionaries store items according to a key, and you can read items using those keys.
        Enums are a way of grouping related values so you can use them without spelling mistakes.
        You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
        */

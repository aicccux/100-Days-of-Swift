// Day 006 Closures, part one

import UIKit

// 1.Creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

// 2.Accepting parameters in a closure
let _driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
_driving("London")

// 3.Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

// 4.Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

// 5.Trailing closure syntax
func _travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
_travel {
    print("I'm driving in my car")
}
_travel {
    print("I'm driving in my car")
}

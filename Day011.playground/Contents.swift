// Day 011 Protocols and extensions

import UIKit

// 1.Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// 2.Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// 3.Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()

// 4.Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// 5.Protocol-oriented programming
protocol _Identifiable {
    var id: String { get set }
    func identify()
}

extension _Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct _User: _Identifiable {
    var id: String
}

let twostraws = _User(id: "twostraws")
twostraws.identify()

// 6.Protocols and extensions summary
/*
     Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
     You can build protocols on top of other protocols, similar to classes.
     Extensions let you add methods and computed properties to specific types such as Int.
     Protocol extensions let you add methods and computed properties to protocols.
     Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
 */

// Day 012 Optionals

import UIKit

// 1.Handling missing data
var age: Int? = nil
age = 38

// 2.Unwrapping optionals
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// 3.Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

// 4.Force unwrapping
let str = "5"
let num = Int(str)
let _num = Int(str)!

// 5.Implicitly unwrapped optionals
let _age: Int! = nil

// 6.Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

// 7.Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// 8.Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

// 9.Failable initializers
let _str = "5"
let __num = Int(str)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// 10.Typecasting
class Animal {}

class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

// 11.Optionals summary
/*
     Optionals let us represent the absence of a value in a clear and unambiguous way.
     Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
     You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
     Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
     You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
     Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
     You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
     If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
     You can use typecasting to convert one type of object to another.
 */

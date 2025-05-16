// Day 010 Classes

import UIKit

// 1.Creating your own classes
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

// 2.Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// 3.Overriding methods
class _Dog {
    func makeNoise() {
        print("Woof!")
    }
}
class _Poodle: _Dog {
    override func makeNoise() {
        print("Yip!")
    }
}
let _poppy = _Poodle()
_poppy.makeNoise()

// 4.Final classes
final class __Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// 5.Copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
//struct Singer {
//    var name = "Taylor Swift"
//}

// 6.Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// 7.Mutability
class _Singer {
    var name = "Taylor Swift"
    //    let name = "Taylor Swift"
}
let taylor = _Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

// 8.Classes summary
/*
     Classes and structs are similar, in that they can both let you create your own types with properties and methods.
     One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
     You can mark a class with the final keyword, which stops other classes from inheriting from it.
     Method overriding lets a child class replace a method in its parent class with a new implementation.
     When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
     Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
     Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
 */

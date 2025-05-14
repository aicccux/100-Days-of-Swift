// Day 009 Structs, part two

import UIKit

// 1.Initializers
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"

// 2.Referring to the current instance
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// 3.Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct _Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var ed = _Person(name: "Ed")
ed.familyTree

// 4.Static properties and methods
@MainActor
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let _ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// 5.Access control
struct __Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

// 6.Structs summary
/*
     You can create your own types using structures, which can have their own properties and methods.
     You can use stored properties or use computed properties to calculate values on the fly.
     If you want to change a property inside a method, you must mark it as mutating.
     Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
     Use the self constant to refer to the current instance of a struct inside a method.
     The lazy keyword tells Swift to create properties only when they are first used.
     You can share properties and methods across all instances of a struct using the static keyword.
     Access control lets you restrict what code can use properties and methods.
 */

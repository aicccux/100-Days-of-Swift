// Day 007 Closures, part two

import UIKit

// 1.Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// 2.Using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// 3.Shorthand parameter names
travel { place in
    return "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}

// 4.Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// 5.Returning closures from functions
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")
let result2: Void = travel()("London")

// 6.Capturing values
func _travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let _result = _travel()
_result("London")
_result("London")
_result("London")

// 7.Closures summary
/*
     You can assign closures to variables, then call them later on.
     Closures can accept parameters and return values, like regular functions.
     You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
     If the last parameter to your function is a closure, you can use trailing closure syntax.
     Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
     If you use external values inside your closures, they will be captured so the closure can refer to them later.
 */

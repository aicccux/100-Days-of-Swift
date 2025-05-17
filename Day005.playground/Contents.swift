// Day 005 Functions

import UIKit

// 1.Writing functions
func printHelp() {
    let message = """
        Welcome to MyApp!

        Run this app inside a directory of images and
        MyApp will resize them all into thumbnails
        """

    print(message)
}
printHelp()

// 2.Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// 3.Returning values
func _square(number: Int) -> Int {
    return number * number
}
let _result = _square(number: 8)
print(_result)

// 4.Parameter labels
func __square(number: Int) -> Int {
    return number * number
}
let __result = __square(number: 8)
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

// 5.Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

// 6.Default parameters
func _greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
_greet("Taylor")
_greet("Taylor", nicely: false)

// 7.Variadic functions
func ___square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
___square(numbers: 1, 2, 3, 4, 5)

// 8.Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// 9.Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// 10.inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

// 11.Functions summary
/*
     Functions let us re-use code without repeating ourselves.
     Functions can accept parameters – just tell Swift the type of each parameter.
     Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
     You can use different names for parameters externally and internally, or omit the external name entirely.
     Parameters can have default values, which helps you write less code when specific values are common.
     Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
     Functions can throw errors, but you must call them using try and handle errors using catch.
     You can use inout to change variables inside a function, but it’s usually better to return a new value.
 */

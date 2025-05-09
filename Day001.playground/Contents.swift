//Day 001

import UIKit

// 1.Variables
var greeting = "Hello, playground"
greeting = "Goodbye"

// 2.Strings and integers
var str = "Hello, world!"
var age = 18
var population = 8_000_000

// 3.Multi-line strings
var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""
// 4.Doubles and Booleans
var pi = 3.14
var awesome = true

// 5.String interpolation
var score = 100
var str_score = "Your score is: \(score)"
var results = "The test results are here: \(str_score)"

// 6.Constants
let taylor = "swift"

// 7.Type annotations
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

// 8.Simple types: Summary

    /* You make variables using var and constants using let. It’s preferable to use constants as often as possible.
        Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
        Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
        String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
        Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
        */

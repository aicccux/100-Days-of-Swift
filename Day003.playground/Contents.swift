// Day 003 Operators and conditions

import UIKit

// 1.Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divied = firstScore / secondScore

let remainder = 13 % secondScore

// 2.Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// 3.Compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// 4.Comparison operators
let _firstScore = 6
let _secondScore = 4
_firstScore == _secondScore
_firstScore != _secondScore
_firstScore < _secondScore
_firstScore >= _secondScore
"Taylor" <= "Swift"

// 5.Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
    print("Blackjack!")
}
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// 6.Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// 7.The ternary operator
let _firstCard = 11
let _secondCard = 10
print(_firstCard == _secondCard ? "Cards are the same" : "Cards are different")
if _firstCard == _secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// 8.Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// 9.Range operators
let _score = 85

switch _score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// 10.Operators and conditions summary
/*
    Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
    There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
    You can use if, else, and else if to run code based on the result of a condition.
    Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
    If you have multiple conditions using the same value, it’s often clearer to use switch instead.
    You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
*/

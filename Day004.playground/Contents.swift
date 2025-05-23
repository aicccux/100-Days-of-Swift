// Day 004 Loops

import UIKit

// 1.For loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// 2.While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// 3.Repeat loops
var _number = 1

repeat {
    print(_number)
    _number += 1
} while _number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

// 4.Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// 5.Exiting multiple loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// 6.Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// 7.Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

// 8.Looping summary
/*
     Loops let us repeat code until a condition is false.
     The most common loop is for, which assigns each item inside the loop to a temporary constant.
     If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
     There are while loops, which you provide with an explicit condition to check.
     Although they are similar to while loops, repeat loops always run the body of their loop at least once.
     You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
     You can skip items in a loop using continue.
     Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
 */

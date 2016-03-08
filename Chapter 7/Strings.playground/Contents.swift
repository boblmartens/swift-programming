//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, playground"
var mutablePlaygound = "Hello, mutable playgound"
mutablePlaygound += "!"

for c: Character in mutablePlaygound.characters {
    print("\(c)")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute == aAcutePrecomposed)
print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

let fromStart = playground.startIndex
let toPosition = 4
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end]
let range = fromStart...end
let firstFive = playground[range]

var silverPlayground = "Hello, playground"
let replacementHello = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"
let silverStart = silverPlayground.startIndex
let silverPosition = 4
let silverEnd = silverStart.advancedBy(silverPosition)
let silverRange = silverStart...silverEnd
var initialHello = silverPlayground[range]
initialHello = replacementHello
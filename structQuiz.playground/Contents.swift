//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
print(fred.name)
print(fred.weight)
print("\(fred.homePlanet)\n")

fred.name = "Brick"
print(fred.name)
fred.weight = 999.2
print(fred.weight)
//fred.homePlanet = "Mars"
// did not work because it was a let but now changed to var
fred.homePlanet = "Mars"
print("\(fred.homePlanet)\n")


struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
print(bilbo)
// prints everything, unlike an instantiated class

//bilbo.name = "Jake"
//bilbo.height = 1.42
//bilbo.homePlanet = "Saturn"
// bilbo is a constant variable, regardless if the property is a var due to it being a struct.

var bilbo1 = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
print(bilbo1)
bilbo1.name = "Jake"
bilbo1.height = 1.42
bilbo1.homePlanet = "Saturn"
print("\(bilbo1)\n")

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
print(edgar.name)
let jason = edgar
jason.name = "Jason"
print(jason.name)
print("This is edgar.name, \(edgar.name). It changed \n")
// changed edgar's name to jason.

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
print("\(charles.homePlanet)\n")
var charlesFromJupiter = charles
//var charlesFromJupiter.homePlanet = "Jupiter"
// returns error because it can't change it

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
print("This is joeAccount: \(joeAccount)")
var joeOtherAccount = joeAccount
print("This is joeOtherAccount: \(joeOtherAccount)\n")
joeAccount.withdraw(50.0)



class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}


let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
print("This is library1: \(library1)")

for each in library1.tracks {
    print(each)
}

print("\n")

let library2 = library1
library2.add(track: "Come As You Are")
print("This is library2: \(library2)")

for each in library2.tracks {
    print(each)
}
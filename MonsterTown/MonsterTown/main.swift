//
//  main.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

print("Hello, World!")

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
//print("Population: \(myTown.population) number of stoplights: \(myTown.numberOfStopLights)")
//myTown.printDescription()
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population:\(myTown.population)")
//myTown.printDescription()

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
//(fredTheZombie as! Zombie).walksWithLimp = true

print("victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool : \(fredTheZombie.victimPool)")
//print("population: \(String(describing: fredTheZombie.town?.population))")




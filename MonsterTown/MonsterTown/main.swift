//
//  main.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

print("Hello, World!")

//var myTown = Town()
//var myTown = Town(numberOfStopLights: 6, population: 10_000)
var myTown = Town(population: 10_000,
                  stoplights: 6)
myTown.printDescription()
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

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
//fredTheZombie.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()
//(fredTheZombie as! Zombie).walksWithLimp = true

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500
print("Victim pool : \(String(describing: fredTheZombie?.victimPool))")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
//print("population: \(String(describing: fredTheZombie.town?.population))")




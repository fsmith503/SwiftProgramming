//
//  main.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

print("Hello, World!")

var myTown = Town()
//print("Population: \(myTown.population) number of stoplights: \(myTown.numberOfStopLights)")
//myTown.printDescription()
myTown.changePopulation(by: 500)
//myTown.printDescription()

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
//(fredTheZombie as! Zombie).walksWithLimp = true

//var frederickTheZombie = fredTheZombie // Still only one zombie!
//frederickTheZombie.name = "Frederick"
//print("Fred's name is \(fredTheZombie.name)")

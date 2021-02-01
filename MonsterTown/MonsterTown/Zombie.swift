//
//  Zombie.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}

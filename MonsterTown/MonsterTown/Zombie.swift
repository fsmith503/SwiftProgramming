//
//  Zombie.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}

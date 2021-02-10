//
//  Town.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

struct Town {
    static let world = "Earth"
    let region = "Middle"
    //var population = 5_422
    var numberOfStopLights = 4
    
    var population = 5_422 {
        didSet(oldPopulation) {
            print("the population has changed to \(population) from \(oldPopulation)")
        }
    }
    
    
    enum Size {
        case small
        case medium
        case large
    }
    
    //lazy var townSize: Size = {
    var townSize: Size {
        switch population {
        case 0...10_000:
            return Size.small
            
        case 10_001...100_000:
            return Size.medium
            
        default:
            return Size.large
        }
    }//()
    
    func printDescription() {
        print("Population: \(population) number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
    
    
    
    
}

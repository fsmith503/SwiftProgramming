//
//  Town.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

struct Town {
    let region = "Middle"
    var population = 5_422
    var numberOfStopLights = 4
    
    
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

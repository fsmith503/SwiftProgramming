//
//  Town.swift
//  MonsterTown
//
//  Created by Franklin on 1/31/21.
//

import Foundation

struct Town {
    static let world = "Earth"
    let region: String//= "Middle"
    //var population = 5_422
    //var numberOfStopLights = 4
    
    var population: Int {
        didSet(oldPopulation) {
            print("the population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStopLights: Int
    
    init(region: String, population: Int, stoplights: Int){
        self.region = region
        self.population = population
        numberOfStopLights = stoplights
    }

	init(population: Int, stoplights: Int){
        self.init(region: "N/A", population: population, stoplights: stoplights)
		//self.init(region: "N/A", population: population, stoplights: stoplights)
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

//
//  Vault.swift
//  CynicalAssets
//
//  Created by Franklin on 2/18/21.
//

import Foundation

class Vault {
    let number: Int
    
    private(set) var assets = [Asset]()
    
    var totalValue: Double = 0
    #warning("Implement totalValue as a computed property")
    
    init(number: Int){
        self.number = number
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func store(_ asset: Asset){
        asset.container = self
        asset.changeHandler = { (change) in
            print("An asset has changed value by \(change) New toal value:  \(String(describing: self.totalValue))")
        }
        assets.append(asset)
    }
    
    func removal(_ asset: Asset){
        asset.container = self
    }
}

extension Vault: CustomStringConvertible{
    var description: String {
        return "Vault(\(number))"
    }
}

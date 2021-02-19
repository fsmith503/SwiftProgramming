//
//  Asset.swift
//  CynicalAssets
//
//  Created by Franklin on 2/18/21.
//

import Foundation

class Asset {
    let name: String
    //let value: Double
    
    var value: Double {
        didSet {
            changeHandler(value - oldValue)
        }
    }
    
    weak var container: Vault?
    
    typealias ValueChangeHandler = (Double) -> Void
    var changeHandler: ValueChangeHandler //= {_ in}
    
    init(name: String, value: Double, changeHandler: @escaping ValueChangeHandler = {_ in}){
        self.name = name
        self.value = value
        self.changeHandler = changeHandler
    }
    deinit{
        print("\(self) is being deallocated")
    }
}

extension Asset: CustomStringConvertible {
    var description: String {
        if let container = container {
            return "Asset(\(name), worth \(value), in \(container))"
        } else {
            return "Asset(\(name), worth \(value), not stored anywhere)"
        }
    }
}

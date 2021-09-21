//
//  itemStore.swift
//  LootLogger2
//
//  Created by Franklin Smith on 9/21/21.
//

import UIKit


class ItemStore {
    
    var allItems = [Item]()
    
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
}

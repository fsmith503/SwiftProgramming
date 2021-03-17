//
//  Task.swift
//  TahDoodle
//
//  Created by Franklin on 3/16/21.
//

import Foundation

struct Task: Equatable, Identifiable {
    
    let id: UUID
    let title: String
    
    init(title: String){
        id = UUID()
        self.title = title
    }
    
    
}

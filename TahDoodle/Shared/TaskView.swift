//
//  TaskView.swift
//  TahDoodle
//
//  Created by Franklin on 3/16/21.
//

import SwiftUI

struct TaskView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .padding(.vertical, 4)
            .font(.title3)
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(title: "Take out the trash")
    }
}

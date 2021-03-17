//
//  TaskListView.swift
//  TahDoodle
//
//  Created by Franklin on 3/16/21.
//

import Foundation
import SwiftUI

struct TaskListView: View {
    
    var taskStore: TaskStore
    
    var body: some View {
        List {
            ForEach(taskStore.tasks) { task in
                TaskView(title: task.title)
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(taskStore: .sample)
    }
}

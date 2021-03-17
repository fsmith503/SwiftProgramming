//
//  TaskStore.swift
//  TahDoodle
//
//  Created by Franklin on 3/16/21.
//

import Foundation

class TaskStore {
    
    private(set) var tasks: [Task] = []
    
    func add(_ task: Task) {
        tasks.append(task)
    }
    
    func remove(_ task: Task) {
        guard let index = tasks.firstIndex(of: task) else { return }
        tasks.remove(at: index)
    }
    
}
    
    
#if DEBUG
extension TaskStore {
    static var sample: TaskStore = {
        let tasks = [
            Task(title: "Add features"),
            Task(title: "Fix bugs"),
            Task(title: "Ship it")
        ]
        let store = TaskStore()
        store.tasks = tasks
        return store
    }()
}
#endif

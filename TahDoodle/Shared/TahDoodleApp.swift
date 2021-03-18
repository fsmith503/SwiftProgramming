//
//  TahDoodleApp.swift
//  Shared
//
//  Created by Franklin on 3/16/21.
//

import SwiftUI

@main
struct TahDoodleApp: App {
    let taskStore = TaskStore()
    var body: some Scene {
        WindowGroup {
            TaskListView(taskStore: .sample)
        }
    }
}

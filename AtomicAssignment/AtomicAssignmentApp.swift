//
//  AtomicAssignmentApp.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import SwiftUI

// This is the main entry point of the app
@main
struct AtomicAssignmentApp: App {
    // This view model manages sports data and logic
    let viewModel = SportViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}

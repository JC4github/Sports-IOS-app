//
//  AtomicAssignmentApp.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import SwiftUI

@main
struct AtomicAssignmentApp: App {
    let viewModel = SportViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}

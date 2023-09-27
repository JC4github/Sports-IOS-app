//
//  ContentView.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import SwiftUI

/// A SwiftUI view displaying information about sports and allowing users to refresh to see different featured sports.
struct ContentView: View {
    /// The index of the currently displayed sport in the `SportViewModel`.
    @State private var index = 0
    
    /// The view model responsible for managing sports data and logic.
    @ObservedObject var viewModel: SportViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                SportDetailView(sportName: viewModel.currentSport.name, sportDescription: viewModel.currentSport.description, emoji: viewModel.currentSport.emoji)
                    .transition(.scale)
                    .animation(.default, value: 1)
                
                Spacer()
                
                Button(action: {
                    viewModel.nextSport()
                }) {
                    Text("Refresh")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                }
                .padding()
            }
            .navigationTitle("Featured Sport")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(viewModel: SportViewModel())
}

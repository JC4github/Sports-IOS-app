//
//  ContentView.swift
//  AtomicAssignment
//
//  Created by Boss Man on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    
    @ObservedObject var viewModel: SportViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                SportDetailView(sportName: viewModel.currentSport.0, sportDescription: viewModel.currentSport.1)
                    .transition(.scale)
                    .animation(.default, value: 1)
                
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
    ContentView(viewModel: SportViewModel(sportsList: [("Soccer", "Soccer, also known as football in most parts of the world, is a popular team sport played on a rectangular field with two teams of eleven players each. The objective of the game is to score goals by getting the ball into the opposing team's net. It is a fast-paced sport that requires skill, teamwork, and strategy.")]))
}

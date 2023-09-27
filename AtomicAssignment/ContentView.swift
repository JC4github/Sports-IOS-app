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
                SportDetailView(sportName: viewModel.currentSport.name, sportDescription: viewModel.currentSport.description)
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
    ContentView(viewModel: SportViewModel())
}

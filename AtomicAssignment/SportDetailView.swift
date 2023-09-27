//
//  SportDetailView.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import SwiftUI

struct SportDetailView: View {
    let sportName: String
    let sportDescription: String
    let emoji: String
    
    var body: some View {
        
        VStack {
            Text(sportName)
                .font(.title)
                .foregroundColor(.primary)
            
            Text(sportDescription)
                .font(.body)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding()
            
            Text(emoji)
                .font(.system(size: 80))
                .padding()
        }
        .padding()
    }
    
}

#Preview {
    SportDetailView(sportName: "Soccer", sportDescription: "Soccer, also known as football in most parts of the world, is a popular team sport played on a rectangular field with two teams of eleven players each. The objective of the game is to score goals by getting the ball into the opposing team's net. It is a fast-paced sport that requires skill, teamwork, and strategy.", emoji: "⚽️")
}

//
//  SportViewModel.swift
//  AtomicAssignment
//
//  Created by Jace Ye on 27/09/23.
//

import Foundation

/// A view model responsible for managing sports data and logic.
class SportViewModel: ObservableObject {
    @Published private var index = 0

    private let sportsData = SportsData.sports_data

    var currentSport: Sport {
        return sportsData.sportsList[index]
    }

    // Move next in the sports list and loop back to the beginning 
    func nextSport() {
        index = (index + 1) % sportsData.sportsList.count
    }
}

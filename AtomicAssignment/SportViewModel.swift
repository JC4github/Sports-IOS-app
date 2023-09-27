//
//  SportViewModel.swift
//  AtomicAssignment
//
//  Created by Boss Man on 27/09/23.
//

import Foundation

class SportViewModel: ObservableObject {
    @Published private var index = 0

    private let sportsData = SportsData.sports_data

    var currentSport: Sport {
        return sportsData.sportsList[index]
    }

    func nextSport() {
        index = (index + 1) % sportsData.sportsList.count
    }
}

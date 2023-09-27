//
//  SportViewModel.swift
//  AtomicAssignment
//
//  Created by Boss Man on 27/09/23.
//

import Foundation

class SportViewModel: ObservableObject {
    @Published private var index = 0

    private let sportsList: [(String, String)]

    init(sportsList: [(String, String)]) {
        self.sportsList = sportsList
    }

    var currentSport: (String, String) {
        return sportsList[index]
    }

    func nextSport() {
        index = (index + 1) % sportsList.count
    }
}

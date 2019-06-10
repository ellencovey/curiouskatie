//
//  Interest.swift
//  Curious_Katie
//
//  Created by Ellen Covey on 10/06/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import Foundation

enum Difficulty: String {
    case easy = "easy"
    case intermediate = "intermediate"
    case hard = "hard"
}

struct Interest {
    // properties
    var title: String
    var difficulty: Difficulty
    
    // initialisers
    init(title: String, difficulty: Difficulty) {
        self.title = title
        self.difficulty = difficulty
    }
}

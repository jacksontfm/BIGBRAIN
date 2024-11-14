//
//  HintPeg.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import Foundation
import SwiftUICore

@Observable
class HintPeg: Identifiable {
    let id = UUID()
    
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    var displayColor: Color {
        Colors.displayedState[color] ?? .white
    }
}

extension HintPeg: Equatable {
    static func == (lhs: HintPeg, rhs: HintPeg) -> Bool {
        lhs.id == rhs.id
    }
}

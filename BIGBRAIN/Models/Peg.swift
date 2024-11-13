//
//  Peg.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation
import SwiftUICore

@Observable
class Peg: Identifiable {
    let id = UUID()
    
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    var displayColor: Color {
        Colors.displayedState[color] ?? .black
    }
}

extension Peg: Equatable {
    static func == (lhs: Peg, rhs: Peg) -> Bool {
        lhs.id == rhs.id
    }
}

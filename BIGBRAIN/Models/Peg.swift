//
//  Peg.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation

@Observable
class Peg: Identifiable {
    let id = UUID()
    
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

extension Peg: Equatable {
    static func == (lhs: Peg, rhs: Peg) -> Bool {
        lhs.id == rhs.id
    }
}

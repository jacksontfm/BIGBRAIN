//
//  Colors.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation
import SwiftUICore

struct Colors {
    let colors: [String]

    /// - returns: `count` unique, random words from `words`, guaranteed unsorted
    func selectRandomColors(count: Int) -> [String] {
        var newColors = Array(colors.shuffled().prefix(count))
        while newColors.sorted() == newColors {
            newColors.shuffle()
        }
        return newColors
    }
    
    //Each word corresponds to a color
    static let displayedState: [String: Color] = [
        "red": Color.red,
        "blue": Color.blue,
        "green": Color.green,
        "yellow": Color.yellow,
        "purple": Color.purple,
        "orange": Color.orange,
    ]
}

extension Colors {
    static let hardColors = Colors(colors: [
        "red",
        "blue",
        "green",
        "yellow",
        "purple",
        "orange",
    ])

    static let easyColors = Colors(colors: [
        "red",
        "blue",
        "green",
        "yellow",
    ])
}

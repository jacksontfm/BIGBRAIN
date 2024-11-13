//
//  Colors.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation

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
    static let icons: [String: String] = [
        "Red": ".red",
        "Blue": ".blue",
        "Green": ".green",
        "Yellow": ".yellow",
        "Purple": ".purple",
        "Orange": ".orange",
    ]
}

extension Colors {
    static let hardColors = Colors(colors: [
        "Red",
        "Blue",
        "Green",
        "Yellow",
        "Purple",
        "Orange",
    ])

    static let easyColors = Colors(colors: [
        "Red",
        "Blue",
        "Green",
        "Yellow",
    ])
}

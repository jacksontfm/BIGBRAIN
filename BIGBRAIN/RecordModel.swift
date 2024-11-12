//
//  RecordModel.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import Foundation
import SwiftData

@Model
class Record {
    var name: String
    var date: Date
    var turns: Int
    //var solution: Solution
    
    init(name: String, date: Date, turns: Int) {
        self.name = name
        self.date = date
        self.turns = turns
    }
    
//    var isBirthdayToday: Bool {
//        Calendar.current.isDateInToday(birthday)
//    }
}

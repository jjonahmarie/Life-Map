//
//  Entry.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-21.
//

import Foundation

struct Entry {
    
    var id: UUID
    var year: Int
    var month: Month
    var day: Int?
    var isAchieved: Bool
    var category: String
    var categoryIcon: String
    var description: String
    
    enum Month {
        case January,
             February,
             March,
             April,
             May,
             June,
             July,
             August,
             September,
             October,
             November,
             December
    }

}

//
//  Entry.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-21.
//

import Foundation

struct Entry {
    
    var id: UUID = UUID()
    var year: Int = 2008
    var month: Month = Entry.Month.April
    var day: Int? = 28
    var isAchieved: Bool = false
    var description: String = "Anniversary"
    
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

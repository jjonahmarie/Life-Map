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
    var month: Int
    var day: Int?
    var type: EntryType
    var description: String
    
    var categoryName: String?
    var categoryIcon: String?
    
    enum EntryType {
        case milestone
        case target
    }
}

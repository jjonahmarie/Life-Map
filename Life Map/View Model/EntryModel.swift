//
//  EntryModel.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-22.
//

import Foundation

class EntryModel: ObservableObject {
    
    @Published var year = [2008, 2009, 2010, 2011, 2012]
    @Published var month = ["January", "February", "March", "April", "May"]
    @Published var day = [25, 26, 27, 28, 29, 30]
    @Published var categories = ["Health", "School", "Work", "Relationship", "Family"]
    
    @Published var entries = [Entry]()
    
    init() {
        
    }
    
    
    
}

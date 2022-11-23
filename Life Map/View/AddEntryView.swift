//
//  addEntryView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-21.
//

import SwiftUI

struct AddEntryView: View {
    
    var year = [2008, 2009, 2010, 2011, 2012]
    @State private var selectedYear = 2012
    
    var month = ["January", "February", "March", "April", "May"]
    @State private var selectedMonth = "April"
    

    @State private var entryType = "Milestone"
    @State private var entryDay = "28"
    @State private var entryDescription = "Became an IOS Developer"
    
    var body: some View {
        
        NavigationView {
        
            
            Form {
                
                Section(header: Text("Date")) {
                    
                    Picker ("Year", selection: $selectedYear) {
                        ForEach(year, id: \.self) { year in
                            Text(String(year))
                        }
                    }
                
                    
                    
    
                }
            }
        }
    }
        //        TextField("Enter text...",
        //                      text: $entryDescription,
        //                      axis: .vertical)
        //                .padding()
        //                .overlay(
        //                    RoundedRectangle(cornerRadius: 14)
        //                        .stroke(Color.gray, lineWidth: 2)
        //                )
        
    
    
    struct AddEntryView_Previews: PreviewProvider {
        static var previews: some View {
            AddEntryView()
        }
    }
}

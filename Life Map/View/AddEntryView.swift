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
    
    var day: [Int] = [25, 26, 27, 28, 29, 30]
    @State private var selectedDay = 28

    @State private var isAchieved = true
    
    @State private var includeDay = true
    
    @State private var entryDescription = "Became an IOS Developer"
    
    var body: some View {
        
        NavigationView {
        
            VStack {
                Form {
                    
                    Section {
                        Toggle("Have you achieved it?", isOn: $isAchieved)
                    } header: {
                        Text("Milestone vs Target")
                    } footer: {
                        Text("Turning this ON will count it as a Milestone. Otherwise, it will count as a Target.")
                    }


                    Section(header: Text(isAchieved ? "When did you achieve this milestone?" : "When do you want to achieve this target? ")) {
                        
                        Picker("Year", selection: $selectedYear) {
                            ForEach(year, id: \.self) { year in
                                Text(String(year))
                            }
                        }
                    
                        Picker("Month", selection: $selectedMonth) {
                            ForEach(month, id: \.self) { month in
                                Text(month)
                            }
                        }
                        
                        Toggle("Include day?", isOn: $includeDay)
                        
                        if includeDay {
                            Picker("Day", selection: $selectedDay) {
                                ForEach(day, id: \.self) { day in
                                    Text(String(day))
                                }
                            }
                        }
                        
                        
                    }
                    
                    Section(header: Text(isAchieved ? "What did you achieve?" : "What do you want to achieve?")) {
                        TextField("Enter details...",
                                      text: $entryDescription,
                                  axis: .vertical)

                    }
                }
                
                Button("Save") {
                    
                }
            }
        }
    }

        
    
    
    struct AddEntryView_Previews: PreviewProvider {
        static var previews: some View {
            AddEntryView()
        }
    }
}

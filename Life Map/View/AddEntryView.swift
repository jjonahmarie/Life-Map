//
//  addEntryView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-21.
//

import SwiftUI

struct AddEntryView: View {
    
    @State var entryType = "Milestone"
    @State var entryYear = "2000"
    @State var entryMonth = "April"
    @State var entryDay = "28"
    @State var entryDescription = "Became an IOS Developer"
    
    var body: some View {
        
        VStack {
            ZStack {
                
                Color.white
                    .ignoresSafeArea()
                
                VStack (alignment: .leading, spacing: 10) {
                    
                    Group {
                        Text("Year")
                        TextField("Year",
                                  text: $entryYear)
                            .padding(.vertical, 1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                        
                        Text("Month")
                        TextField("Month",
                                  text: $entryMonth)
                            .padding(.vertical, 1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                        
                        Text("Day")
                        TextField("Day",
                                  text: $entryDay)
                            .padding(.vertical, 1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                        
                        Text("Description")
                        TextField("Enter text...",
                                  text: $entryDescription,
                                  axis: .vertical)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.gray, lineWidth: 2)
                            )
                        
                    }
                    
                    Spacer()
                
                }
                .padding()
            }
            
            HStack {
                
                Spacer()
                
                Button("Save") {
                    
                }
                
                Spacer()
                
                Button("Cancel") {
                    
                }
                
                Spacer()
            }
            .padding()
        }
        .accentColor(.black)
        
        
        
    }
}

struct AddEntryView_Previews: PreviewProvider {
    static var previews: some View {
        AddEntryView()
    }
}

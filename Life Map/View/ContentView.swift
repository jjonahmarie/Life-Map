//
//  ContentView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelected = 1
    @State private var showProfileSheet = false
    
    var body: some View {
        
        NavigationStack {
            
            TabView(selection: $tabSelected) {
                
                MapView(title: "Milestones")
                    .tabItem {
                        VStack {
                            Image(systemName: "star.circle.fill")
                            Text("Milestones")
                        }
                    }
                    .tag(1)
                
                AddEntryView()
                    .tabItem {
                        VStack {
                            Image(systemName: "plus.circle")
                            Text("Add")
                        }
                    }
                    .tag(2)
                
                MapView(title: "Targets")
                    .tabItem {
                        VStack {
                            Image(systemName: "target")
                            Text("Targets")
                        }
                    }
                    .tag(3)
            }
            .sheet(isPresented: $showProfileSheet, content: {
                ProfileView()
            })
            .toolbar(content: {
                Image(systemName: "person.crop.circle.fill")
                    .onTapGesture {
                        showProfileSheet = true
                    }
            })
            .accentColor(.black.opacity(0.8))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

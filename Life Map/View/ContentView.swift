//
//  ContentView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var tabSelected = 1
    
    var body: some View {
        
        TabView(selection: $tabSelected) {
            
            MapView()
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
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "target")
                        Text("Targets")
                    }
                }
                .tag(3)
        }
        .accentColor(.black.opacity(0.8))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

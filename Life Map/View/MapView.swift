//
//  MapView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-21.
//

import SwiftUI

struct MapView: View {
    
    var title: String
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("This is the \(title) page.")
            }
            .navigationBarTitle(title, displayMode: .inline)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(title: "Milestones")
    }
}

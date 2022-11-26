//
//  ProfileView.swift
//  Life Map
//
//  Created by Jonah Marie Evangelista on 2022-11-25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .clipped()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2.0))
                
                Text("Jonah")
            }
            
            Form {
                
                
                
                Section {
                    
                }
                
                
            }
            .navigationBarTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

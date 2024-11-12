//
//  ContentView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Text("BIGBRAIN")
                
                Image(systemName: "brain.filled.head.profile")
                    .font(.largeTitle)
                    .foregroundStyle(.tint)
                
                NavigationLink(destination: Game()) {
                    Text("New Game")
                }
                .padding()
                
                NavigationLink(destination: Records()) {
                    Text("Records")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

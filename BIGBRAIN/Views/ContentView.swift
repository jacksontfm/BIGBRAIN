//
//  ContentView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: \Record.turns) private var records: [Record]
    @Environment(Game.self) private var game
    
    var body: some View {
        
        if (!game.gameStart) {
            NavigationStack {
                
                VStack {
                    Text("BIGBRAIN")
                    
                    Image(systemName: "brain.filled.head.profile")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                    
                    Button {
                        game.startNewGame()
                    } label: {
                        Text("Start?")
                    }
                    .padding()
                    
                    NavigationLink(destination: RecordsView()) {
                        Text("Records")
                    }
                }
            }
            
        } else {
            GameView()
        }
    }
}

#Preview {
    ContentView()
        .environment(Game())
        .modelContainer(for: Record.self, inMemory: true)
}

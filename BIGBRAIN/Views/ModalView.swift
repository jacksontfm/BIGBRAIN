//
//  ModalView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI
import SwiftData

struct ModalView: View {
    @Environment(Game.self) private var game
    @Environment(\.modelContext) private var context
    
    @State private var newName = ""
    @State private var newDate = Date.now
    @State private var saved = false
    
    var body: some View {
        
        VStack(spacing: 30) {
            if (game.gameWon) {
                Text("You won!")
                    .font(.title2)
                if game.turnCount == 1 {
                    Text("You finished in one turn, wow! Did you cheat?")
                } else {
                    Text("You finished in \(game.turnCount) turns!")
                }
                HStack {
                    TextField("Enter your name to save your record", text: $newName)
                        .autocorrectionDisabled()
                        .textFieldStyle(.roundedBorder)
                        .disabled(saved)
                    Button("Save") {
                        let newRecord = Record(name: newName, date: newDate, turns: game.turnCount)
                        context.insert(newRecord)
                        
                        newName = ""
                        newDate = .now
                        saved = true
                    }
                    .bold()
                    .disabled(saved)
                }
            } else if (game.gameLost) {
                Text("Game Over")
                    .font(.title)
                Text("Better luck next time?")
            } else {
                Text("Are you giving up?")
                    .font(.title)
                CancelButton()
            }
            NewGameButton()
            HomeButton()
        }
        .padding()
    }
}

#Preview {
    let game = Game()
    game.gameWon = true
    return ModalView()
        .environment(game)
        .modelContainer(for: Record.self, inMemory: true)
}

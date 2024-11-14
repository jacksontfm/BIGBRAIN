//
//  ModalView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct ModalView: View {
    @Environment(Game.self) private var game
    
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
                //TODO: add functionality to save record
                //Text("Enter your name to save your record")
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
    game.gameLost = true
    return ModalView()
        .environment(game)
}

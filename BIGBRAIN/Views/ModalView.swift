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
                    .font(.title)
            } else {
                Text("Are you giving up?")
                    .font(.title2)
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
    game.gameWon = false
    return ModalView()
        .environment(game)
}

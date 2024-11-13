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
        
        if (game.gameWon) {
            Text("You won!")
        } else {
            Text("Are you giving up?")
            CancelButton()
        }
        NewGameButton()
        HomeButton()
    }
}

#Preview {
    ModalView()
        .environment(Game())
}

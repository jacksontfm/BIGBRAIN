//
//  NewGameButton.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct NewGameButton: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Button {
            game.startNewGame()
        } label: {
            Spacer()
            Text("Start New Game")
                .font(.system(size: 30))
                .foregroundStyle(.white)
            Spacer()
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.4)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}



#Preview {
    NewGameButton()
        .environment(Game())
}

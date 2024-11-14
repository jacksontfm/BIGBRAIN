//
//  Game.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import SwiftUI

struct GameView: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        if(game.modalView) {
            ModalView()
        } else {
            VStack(spacing: 20) {
                VStack {
                    HStack {
                        MessageView()
                            .padding(.leading, 20)
                        Spacer()
                        Text("Give up?")
                        GiveUpButton()
                            .padding(.trailing, 20)
                    }
                    HStack {
                        if (game.turnsRemaining == 1) {
                            Text("This is your last chance!")
                                .padding(.leading, 20)
                        } else {
                            Text("You have \(game.turnsRemaining) attempts left")
                                .padding(.leading, 20)
                        }
                        Spacer()
                    }
                }
                Row1View()
                Row2View()
                Row3View()
                Row4View()
                Row5View()
                InputRowView()
                SubmitButton()
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    GameView()
        .environment(Game())
}

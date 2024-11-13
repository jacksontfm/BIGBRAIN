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
                HStack {
                    MessageView()
                        .padding(.horizontal, 20)
                    Spacer()
                    GiveUpButton()
                        .padding(.horizontal, 20)
                }
                Spacer()
                SubmitButton()
            }
        }
    }
}

#Preview {
    GameView()
        .environment(Game())
}

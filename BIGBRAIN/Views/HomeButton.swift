//
//  HomeButton.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct HomeButton: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Button {
            game.quitGame()
        } label: {
            Text("Go home")
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .padding(.horizontal, 15)
                .padding(.vertical, 15)
        }
        .buttonStyle(.borderedProminent)
        .font(.title2)
    }
}

#Preview {
    HomeButton()
        .environment(Game())
}

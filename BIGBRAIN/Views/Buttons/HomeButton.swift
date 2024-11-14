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
            Spacer()
            Text("Back to Home")
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
    HomeButton()
        .environment(Game())
}

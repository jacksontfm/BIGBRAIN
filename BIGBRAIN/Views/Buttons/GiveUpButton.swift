//
//  GiveUpButton.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct GiveUpButton: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Button {
            game.modalToggle()
        } label: {
            Image(systemName: "xmark.square")
                .font(.system(size: 30))
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    GiveUpButton()
        .environment(Game())
}

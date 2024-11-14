//
//  SubmitButton.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct SubmitButton: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Button {
            game.submit()
        } label: {
            Spacer()
            Text("Here's my answer!")
                .font(.system(size: 30))
                .foregroundStyle(.white)
            Spacer()
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.6)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
        .disabled(game.guess.count < 4)
    }
}

#Preview {
    SubmitButton()
        .environment(Game())
}

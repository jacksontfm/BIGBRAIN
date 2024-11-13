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
            Text("MAYBE?")
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
    SubmitButton()
        .environment(Game())
}

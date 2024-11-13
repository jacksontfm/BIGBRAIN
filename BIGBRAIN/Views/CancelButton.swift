//
//  CancelButton.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct CancelButton: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Button {
            game.modalToggle()
        } label: {
            Text("Cancel")
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
    CancelButton()
        .environment(Game())
}

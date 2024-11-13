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
            Spacer()
            Text("I'll never give up!")
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
    }
}

#Preview {
    CancelButton()
        .environment(Game())
}

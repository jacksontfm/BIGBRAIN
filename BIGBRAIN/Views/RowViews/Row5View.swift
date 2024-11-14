//
//  Guess5View.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import SwiftUI

struct Row5View: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        HStack {
            if (game.guess5.count >= 4) {
                PegView(peg: Peg(color: game.guess5[0]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess5[1]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess5[2]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess5[3]))
                    .padding(.leading, 10)
            } else {
                if (game.turnCount == 5 && game.guess.count >= 1) {
                    PegView(peg: Peg(color: game.guess[0]))
                        .padding(.leading, 10)
                } else {
                    Image(systemName: "circle.slash")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                        .padding(.leading, 15)
                }
                if (game.turnCount == 5 && game.guess.count >= 2) {
                    PegView(peg: Peg(color: game.guess[1]))
                        .padding(.leading, 10)
                } else {
                    Image(systemName: "circle.slash")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                        .padding(.leading, 15)
                }
                if (game.turnCount == 5 && game.guess.count >= 3) {
                    PegView(peg: Peg(color: game.guess[2]))
                        .padding(.leading, 10)
                } else {
                    Image(systemName: "circle.slash")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                        .padding(.leading, 15)
                }
                if (game.turnCount == 5 && game.guess.count >= 4) {
                    PegView(peg: Peg(color: game.guess[3]))
                        .padding(.leading, 10)
                } else {
                    Image(systemName: "circle.slash")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                        .padding(.leading, 15)
                }
            }
            Spacer()
            HStack {
                VStack {
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                }
                VStack {
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                }
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }
    }
}

#Preview {
    Row5View()
        .environment(Game())
}

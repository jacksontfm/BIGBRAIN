//
//  GuessView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import SwiftUI

struct Guess1View: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        HStack {
            if (game.guess1.count >= 4) {
                PegView(peg: Peg(color: game.guess1[0]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess1[1]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess1[2]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess1[3]))
                    .padding(.leading, 10)
            } else {
                if (game.turnCount == 1) {
                    if (game.guess.count >= 1) {
                        PegView(peg: Peg(color: game.guess[0]))
                            .padding(.leading, 10)
                    }
                    if (game.guess.count >= 2) {
                        PegView(peg: Peg(color: game.guess[1]))
                            .padding(.leading, 10)
                    }
                    if (game.guess.count >= 3) {
                        PegView(peg: Peg(color: game.guess[2]))
                            .padding(.leading, 10)
                    }
                    if (game.guess.count >= 4) {
                        PegView(peg: Peg(color: game.guess[3]))
                            .padding(.leading, 10)
                    }
                }
            }
            Spacer()
            HStack {
                //TODO: make hint pegs conditionally appear based on game.hint
                VStack {
//                    if (game.hint1) {
//                        
//                    }
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
    }
}

#Preview {
    Guess1View()
        .environment(Game())
}

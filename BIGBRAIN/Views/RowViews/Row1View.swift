//
//  GuessView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import SwiftUI

struct Row1View: View {
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
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.largeTitle)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                            .padding(.leading, 15)
                    }
                    if (game.guess.count >= 2) {
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
                    if (game.guess.count >= 3) {
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
                    if (game.guess.count >= 4) {
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
            }
            Spacer()
            HStack {
                VStack {
                    if (game.hint1.count >= 1) {
                        HintPegView(hintPeg: HintPeg(color: game.hint1[0]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
                    if (game.hint1.count >= 3) {
                        HintPegView(hintPeg: HintPeg(color: game.hint1[2]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
                }
                VStack {
                    if (game.hint1.count >= 2) {
                        HintPegView(hintPeg: HintPeg(color: game.hint1[1]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
                    if (game.hint1.count >= 4) {
                        HintPegView(hintPeg: HintPeg(color: game.hint1[3]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
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
    Row1View()
        .environment(Game())
}

//
//  Guess3View.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import SwiftUI

struct Row3View: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        HStack {
            if (game.guess3.count >= 4) {
                PegView(peg: Peg(color: game.guess3[0]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess3[1]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess3[2]))
                    .padding(.leading, 10)
                PegView(peg: Peg(color: game.guess3[3]))
                    .padding(.leading, 10)
            } else {
                if (game.turnCount == 3 && game.guess.count >= 1) {
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
                if (game.turnCount == 3 && game.guess.count >= 2) {
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
                if (game.turnCount == 3 && game.guess.count >= 3) {
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
                if (game.turnCount == 3 && game.guess.count >= 4) {
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
                    if (game.hint3.count >= 1) {
                        HintPegView(hintPeg: HintPeg(color: game.hint3[0]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
                    if (game.hint3.count >= 3) {
                        HintPegView(hintPeg: HintPeg(color: game.hint3[2]))
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
                    if (game.hint3.count >= 2) {
                        HintPegView(hintPeg: HintPeg(color: game.hint3[1]))
                            .padding(.trailing, 3)
                    } else {
                        Image(systemName: "circle.slash")
                            .font(.title2)
                            .foregroundStyle(.tint)
                            .opacity(0.2)
                            .brightness(-0.4)
                    }
                    if (game.hint3.count >= 4) {
                        HintPegView(hintPeg: HintPeg(color: game.hint3[3]))
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
    Row3View()
        .environment(Game())
}

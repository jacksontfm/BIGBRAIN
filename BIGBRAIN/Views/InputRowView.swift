//
//  InputRowView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct InputRowView: View {
    @Environment(Game.self) private var game
    
    let redPeg = Peg(color: "red")
    let bluePeg = Peg(color: "blue")
    let greenPeg = Peg(color: "green")
    let yellowPeg = Peg(color: "yellow")
    let purplePeg = Peg(color: "purple")
    
    var body: some View {
        HStack {
            Button {
                game.addPeg(input: "red")
            } label: {
                PegView(peg: redPeg)
                    .padding(.leading, 10)
            }
            .disabled(game.guess.count >= 4)
            Button {
                game.addPeg(input: "blue")
            } label: {
                PegView(peg: bluePeg)
                    .padding(.leading, 10)
            }
            .disabled(game.guess.count >= 4)
            Button {
                game.addPeg(input: "green")
            } label: {
                PegView(peg: greenPeg)
                    .padding(.leading, 10)
            }
            .disabled(game.guess.count >= 4)
            Button {
                game.addPeg(input: "yellow")
            } label: {
                PegView(peg: yellowPeg)
                    .padding(.leading, 10)
            }
            .disabled(game.guess.count >= 4)
            Spacer()
            Button {
                game.removePeg()
            } label: {
                Image(systemName: "minus.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .brightness(0.3)
            }
            .disabled(game.guess.isEmpty)
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.5)
                .brightness(-0.4)
        }
    }
}

#Preview {
    InputRowView()
        .environment(Game())
}

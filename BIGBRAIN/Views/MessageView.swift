//
//  MessageView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct MessageView: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        Text(game.message.rawValue)
    }
}

#Preview {
    let game = Game()
    game.message = .tryAgain
    return MessageView()
        .environment(game)
}

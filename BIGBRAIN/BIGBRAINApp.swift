//
//  BIGBRAINApp.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/12.
//

import SwiftUI

@main
struct BIGBRAINApp: App {
    @State private var game = Game()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Record.self)
                .environment(game)
        }
    }
}

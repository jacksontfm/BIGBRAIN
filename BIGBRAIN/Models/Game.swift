//
//  Game.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation

@Observable
class Game {
    private let pegCount = 4
    private var colors: Colors
    
    init(colors: Colors = .hardColors) {
        self.colors = colors
        startNewGame()
    }
    
    //MARK: private implementation
    
    //Updates solution with a new set of pegs
    private func startNewGame() {
        //TODO: implement startNewGame
        //set newSolution
        
        //if solution is empty, append new pegs to solution
        
        //else assign new colors to existing solution
        
    }
}

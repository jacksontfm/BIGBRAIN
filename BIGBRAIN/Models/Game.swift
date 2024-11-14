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
    
    var guess = [String]()
    var solution = [String]()
    
    var guess1 = [String]()
    var guess2 = [String]()
    var guess3 = [String]()
    var guess4 = [String]()
    var guess5 = [String]()
    
    var turnCount = 1
    var turnsRemaining = 5
    var message: Message = .instructions
    
    var gameStart = false
    var gameWon = false
    var modalView = false
    var dangerZone = false
    
    init(colors: Colors = .easyColors) {
        self.colors = colors
    }
    
    func addPeg(input: String) {
        if (guess.count < 4) {
            guess.append(input)
        }
    }
    
    func removePeg() {
        if (!guess.isEmpty) {
            guess.removeLast()
        }
    }
    
    func submit() {
        //TODO: implement submit
        
        //Must have complete guess, then increment turnCount and subtract from turnsRemaining
        
        //Check if input matches solution
        
        //If match, record turn count as final score and display victory modal
        gameWon = true
        modalView = true
        
        //If lose, change message
        message = .tryAgain
        
        //Return to menu
    }
    
    
    //Updates solution with a new set of pegs
    func startNewGame() {
        //TODO: finish implementing startNewGame
        
        if !gameStart {
            gameStart = true
        }
        
        //set newSolution
        
        //if solution is empty, append new pegs to solution
        
        //else assign new colors to existing solution
        
        //reset guesses, turn count, turns remaining, and message
        guess = [String]()
        guess1 = [String]()
        guess2 = [String]()
        guess3 = [String]()
        guess4 = [String]()
        guess5 = [String]()
        
        turnCount = 1
        turnsRemaining = 5
        message = .instructions
        
        //last step, set gameWon and modalView back to false
        gameWon = false
        modalView = false
    }
    
    func quitGame() {
        gameStart = false
    }
    
    func modalToggle() {
        modalView.toggle()
    }
}

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
    var hint = [String]()
    
    var guess1 = [String]()
    var guess2 = [String]()
    var guess3 = [String]()
    var guess4 = [String]()
    var guess5 = [String]()
    
    var hint1 = [String]()
    var hint2 = [String]()
    var hint3 = [String]()
    var hint4 = [String]()
    
    var turnCount = 1
    var turnsRemaining = 5
    var message: Message = .instructions
    
    var gameStart = false
    var gameWon = false
    var gameLost = false
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
        
        //Compare guess against solution to generate hint. Randomize hint after generating.
        let tempGuess = guess
        let tempSolution = solution
        
        
        //Store guess/hint based on turn number, then increment turnCount and subtract from turnsRemaining
        if (turnCount == 1) {
            guess1 = guess
            hint1 = hint
        }
        if (turnCount == 2) {
            guess2 = guess
            hint2 = hint
        }
        if (turnCount == 3) {
            guess3 = guess
            hint3 = hint
        }
        if (turnCount == 4) {
            guess4 = guess
            hint4 = hint
        }
        if (turnCount == 5) {
            guess5 = guess
        }
        turnCount += 1
        turnsRemaining -= 1
        
        //Check if input matches solution
        //TODO: check if input matches solution
        
        //If guess matches solution, record the turn count as final score and display victory modal
        //gameWon = true
        //modalView = true
        
        //If lose, clear guess/hint and change message
        guess = [String]()
        hint = [String]()
        message = .tryAgain
        
        //If no turns are left, game over
        if (turnsRemaining == 0) {
            modalView = true
            gameLost = false
        }
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

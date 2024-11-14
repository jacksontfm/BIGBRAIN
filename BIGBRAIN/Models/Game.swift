//
//  Game.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import Foundation

@Observable
class Game {
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
    
    func gatherHints(guess: [String], solution: [String]) {
        
        //generate an array showing which pegs are in the correct position
        var correctPositions = [Bool]()
        for (item, correctItem) in zip(guess, solution) {
            let isCorrect = item == correctItem
            correctPositions.append(isCorrect)
        }
        
        //loop through correctPositions array and append red hint pegs.
        for item in correctPositions where item == true {
            hint.append("red")
        }
        
        //this gives us the indexes of the pegs that are in incorrect positions
        let remainingItems = correctPositions.enumerated().compactMap{ $1 == false ? $0: nil}
        
        //now, we will generate copies of the guess and solution arrays that only include the remainingItems. These will be used to generate the white pegs.
        var guessRemainder = [String]()
        var solutionRemainder = [String]()
        for item in remainingItems {
            guessRemainder.append(guess[item])
            solutionRemainder.append(solution[item])
        }
        
        //this recursive function loops through the guess/solution remainders to generate white pegs
        func recursiveCheck(guess: [String], solution: [String]) {
            var guessCopy = guess
            var solutionCopy = solution
            if (guessCopy.isEmpty || solutionCopy.isEmpty) {
                return
            } else if (solutionCopy.contains(guessCopy[0])) {
                hint.append("white")
                let index = solutionCopy.firstIndex(of: guessCopy[0])
                solutionCopy.remove(at: index!)
                guessCopy.remove(at: 0)
                recursiveCheck(guess: guessCopy, solution: solutionCopy)
            } else {
                guessCopy.remove(at: 0)
                recursiveCheck(guess: guessCopy, solution: solutionCopy)
            }
        }
        recursiveCheck(guess: guessRemainder, solution: solutionRemainder)
    }
    
    func submit() {
        
        //Compare guess against solution to generate hint. Randomize hint after generating.
        gatherHints(guess: guess, solution: solution)
        hint.shuffle()
        
        //Store guess/hint based on turn number. There must be a better way to do this than five separate IF statements
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
        
        //If guess matches solution, record the turn count as final score and display victory modal
        if (guess == solution) {
            gameWon = true
            modalView = true
            return
        }
        
        //If guess does not match solution, clear guess/hint and change message. Increment turnCount by 1 and subtract 1 from turnsRemaining
        guess = [String]()
        hint = [String]()
        message = .tryAgain
        
        turnCount += 1
        turnsRemaining -= 1
        
        //If no turns are left, game over
        if (turnsRemaining == 0) {
            modalView = true
            gameLost = true
        }
    }
    
    
    //Updates solution with a new set of pegs
    func startNewGame() {
        
        if !gameStart {
            gameStart = true
        }
        
        //set newSolution
        let newSolution = colors.selectRandomColors()
        solution = newSolution
        print("Solution: ", solution)
        
        //reset guesses, hints, turn count, turns remaining, and message
        guess = [String]()
        guess1 = [String]()
        guess2 = [String]()
        guess3 = [String]()
        guess4 = [String]()
        guess5 = [String]()
        
        hint = [String]()
        hint1 = [String]()
        hint2 = [String]()
        hint3 = [String]()
        hint4 = [String]()
        
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

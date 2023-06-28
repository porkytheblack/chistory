//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Donald Onyino on 28/06/2023.
//

import Foundation


struct ScoreViewModel {
    var correctGuesses: Int
    var incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}

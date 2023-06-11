//
//  ConcenterationGame.swift
//  Concentration
//
//  Created by Ivan on 11.06.2023.
//

import Foundation

class ConcentrationGame {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            // cards.append(card)
            // cards.append(card)
            // or
            cards += [card, card]
        }
    }
}

//
//  Concentration.swift
//  calculator
//
//  Created by 木村　祐太 on 2019/11/27.
//  Copyright © 2019 yutank. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
//        cards[index].isFaceUp = !cards[index].isFaceUp
        if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
            if cards[matchIndex].identifier == cards[index].identifier {
                cards[index].isMatched = true
                cards[matchIndex].isMatched = true
            }
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = nil
        } else {
            for flipDownIndex in cards.indices {
                cards[flipDownIndex].isFaceUp = false
            }
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = index
        }
    }
    
    func isClear() -> Bool{
        for card in cards {
            if !card.isMatched {
                return false
            }
        }
        return true
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
//            cards.append(card)
//            cards.append(card)
            cards += [card, card]
        }
        
        // TODO: shuffle the card
    }
}

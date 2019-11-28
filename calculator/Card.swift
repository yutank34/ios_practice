//
//  Card.swift
//  calculator
//
//  Created by 木村　祐太 on 2019/11/27.
//  Copyright © 2019 yutank. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var idenfierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.idenfierFactory += 1
        return idenfierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

//
//  ViewController.swift
//  calculator
//
//  Created by 木村　祐太 on 2019/11/25.
//  Copyright © 2019 yutank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "FlipCount: \(flipCount)"
        }
    }
    let emojis = ["👻", "🎃", "👻", "🎃"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
//    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        cardButtons.firstIndex(of: sender)
        cardButtons.lastIndex(of: sender)
        cardButtons.index(of: sender)
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojis[cardNumber], of: sender)
        } else {
            print("Did not choice Card!")
        }
    }

    
    func flipCard(withEmoji emoji: String, of button: UIButton) {
        print("\(emoji)")
        if (emoji == button.currentTitle) {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}


//
//  ViewController.swift
//  Concentration
//
//  Created by Ivan on 10.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var touches = 0 {
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    let emojiCollection = ["🦊", "🐰", "🦊", "🐰"]
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        guard let buttonIndex = buttonCollection.firstIndex(of: sender) else { return }
        flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        // or
        // if let buttonIndex = buttonCollection.firstIndex(of: sender) {
        //    flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        // }
    }
    
}


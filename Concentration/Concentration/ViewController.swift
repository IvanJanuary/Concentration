//
//  ViewController.swift
//  Concentration
//
//  Created by Ivan on 10.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var touches = 0
    

    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
    }
    
    
    
}


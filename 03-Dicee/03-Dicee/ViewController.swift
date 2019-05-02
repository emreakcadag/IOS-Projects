//
//  ViewController.swift
//  03-Dicee
//
//  Created by emre on 24.04.2019.
//  Copyright © 2019 Emre Akçadağ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        dice1.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}


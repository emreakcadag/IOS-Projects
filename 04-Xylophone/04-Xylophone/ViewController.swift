//
//  ViewController.swift
//  04-Xylophone
//
//  Created by emre on 2.06.2019.
//  Copyright © 2019 Emre Akçadağ. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(buttonTag: sender.tag)
    }
    
    func playSound(buttonTag:Int) {
        
        guard let url = Bundle.main.url(forResource: "note" + String(buttonTag), withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url)
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    
}

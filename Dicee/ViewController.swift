//
//  ViewController.swift
//  Dicee
//
//  Created by Yairo Fernandez on 12/12/18.
//  Copyright © 2018 Yairo Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceView()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        
        updateDiceView()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceView()
    }
    
    func updateDiceView() {
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
}


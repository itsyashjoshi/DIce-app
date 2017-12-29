//
//  ViewController.swift
//  dice
//
//  Created by Yash Joshi on 12/24/17.
//  Copyright © 2017 Yash Joshi. All rights reserved.
//

import UIKit
var randomDiceIndex1 : Int = 0
var randomDiceIndex2 : Int = 0
var diceIndex2 = 0
let diceArray = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageview2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
  updateDiceImage()
        
    }
    func updateDiceImage()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
            diceImageview2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
}


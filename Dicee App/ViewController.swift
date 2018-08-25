//
//  ViewController.swift
//  Dicee App
//
//  Created by Sk Dubey on 8/25/18.
//  Copyright © 2018 arcrector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Dicee1 : Int = 0
    var Dicee2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var dicee1: UIImageView!
    @IBOutlet weak var dicee2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func roll(_ sender: UIButton) {
        
        Dicee1 = Int(arc4random_uniform(6))
        Dicee2 = Int(arc4random_uniform(6))
        
        dicee1.image = UIImage(named: diceArray[Dicee1])
        dicee2.image = UIImage(named: diceArray[Dicee2])
    }
    
}


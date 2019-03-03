//
//  second.swift
//  walkthrough
//
//  Created by apple on 3/3/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    //MARK: Properties
    
    var my_dice1 : Int = 0
    var my_dice2 : Int = 0
    let array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollButton(_ sender: Any) {
        my_dice1 = Int(arc4random_uniform(6))
        my_dice2 = Int(arc4random_uniform(6))
        dice1.image = UIImage(named: array[my_dice1])
        dice2.image = UIImage(named: array[my_dice2])
    }
    
}

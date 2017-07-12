//
//  ViewController.swift
//  ColdCall
//
//  Created by Kaan Kabalak on 7/5/17.
//  Copyright © 2017 Kaan Kabalak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    let nameBank = ["Noah",
                    "Emma",
                    "William",
                    "Olivia",
                    "Ava",
                    "Mason",
                    "James",
                    "Laura",
                    "Benjamin",
                    "Mia",
                    "Jay",
                    "Courtney",
                    "Chris",
                    "Emily"
                    ]
    
    var randi = 0
    var randnum = 0
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        randi = Int(arc4random_uniform(UInt32(nameBank.count)))
        randnum = Int(arc4random_uniform(UInt32(5)) + 1)
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        nameLabel.text = nameBank[randi]
        numberLabel.text = String(randnum)
        if (randnum <= 2) {
            numberLabel.textColor = UIColor.red
        }
        else if (randnum <= 4) {
            numberLabel.textColor = UIColor.orange
        }
        else {
            numberLabel.textColor = UIColor.green
        }
    }


}


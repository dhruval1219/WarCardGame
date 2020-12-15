//
//  ViewController.swift
//  WarCardGame
//
//  Created by Dhruval Patel on 4/1/20.
//  Copyright © 2020 Dhruval Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var CPUScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButton(_ sender: Any) {
        
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
      
        leftCardView.image = UIImage(named: "card\(leftNum)")
        rightCardView.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum{
            leftScore += 1
            playerScoreLabel.text = String(leftScore)
        }
        else if leftNum < rightNum {
            rightScore += 1
            CPUScoreLabel.text = String(rightScore)
        }
    }
    
}


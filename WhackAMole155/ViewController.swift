//
//  ViewController.swift
//  WhackAMole155
//
//  Created by Berglund, Brett A on 10/15/20.
//  Copyright © 2020 Berglund, Brett A. All rights reserved.
//

import UIKit

var screenWidth = 0
var screenHeight = 0
var score = 0
var scoreLabel = UILabel()
var fieldLabel = UILabel()
var button = UIButton()


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        // Score Label
        scoreLabel.frame = CGRect(x:20, y: 60, width: screenWidth-40, height: screenHeight/10)
        scoreLabel.backgroundColor = UIColor.green
        scoreLabel.text = "\(score)"
        scoreLabel.textAlignment = NSTextAlignment.center;
        
        view.addSubview(scoreLabel)
        
        // Field
        let fieldWidth = screenWidth-40
        let fieldHeight = screenHeight-(screenHeight/10)-120
        let fieldY = 60+(screenHeight/10)
        fieldLabel.frame = CGRect(x: 20, y:60+(screenHeight/10), width: fieldWidth, height: fieldHeight)
        fieldLabel.backgroundColor = UIColor.orange
        
        view.addSubview(fieldLabel)
        
        // Button
        let buttonDiam = 40
        button.frame  = CGRect(x: 20, y: fieldY, width: buttonDiam, height: buttonDiam)
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(hitMe(_sender:)), for: .touchUpInside)
        
        view.addSubview(button)
        
        
        self.view = view
        
    }

    @objc func hitMe(_sender:UIButton!) {
        print("button was pressed")
        score+=1
        
    }
}


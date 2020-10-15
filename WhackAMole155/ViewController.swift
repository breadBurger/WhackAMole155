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


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        // Score Label
        scoreLabel.frame = CGRect(x: 20, y: 60, width: 40, height: 40)
        scoreLabel.backgroundColor = UIColor.green
        scoreLabel.text = "\(score)"
        
        view.addSubview(scoreLabel)
        
        //
        
        self.view = view
        
    }


}


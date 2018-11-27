//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Cavit KULAKLI on 20.11.2018.
//  Copyright © 2018 Cavit KULAKLI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
     var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomAnswer()
    }

    func randomAnswer(){
        let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomAnswer()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomAnswer()
    }
    
}


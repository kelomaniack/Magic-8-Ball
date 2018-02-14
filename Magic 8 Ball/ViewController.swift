//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Konstantinidis, Evangelos on 14.02.18.
//  Copyright © 2018 Konstantinidis, Evangelos. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}


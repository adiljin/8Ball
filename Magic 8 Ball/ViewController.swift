//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Adil Shalimbekov on 12/10/17.
//  Copyright © 2017 Adil Shalimbekov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var random8BallIndex : Int = 0
    
    let eightBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func askBtnPressed(_ sender: Any) {
        update8Ball()
    }
    
    func update8Ball(){
        random8BallIndex = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: eightBallArray[random8BallIndex])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        update8Ball()
    }
    
}


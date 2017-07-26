//
//  ViewController.swift
//  BarkQuiz
//
//  Created by Marco Grier on 7/24/17.
//  Copyright © 2017 mlgrier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var dogBreeds = [String]()
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogBreeds += ["afghan hound", "airedale terrier", "akita", "alaskan malamute", "american eskimo dog", "american stafford terrier", "australian cattle dog", "australian shepherd", "australian terrier", "basenji", "basset hound", "beagle", "bearded collie", "bedlington terrier", "belgian sheepdog", "bernese mountain dog", "bichon frise", "bloodhound"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        askQuestion()
    }
    
    func askQuestion() {
        button1.setImage(UIImage(named: dogBreeds[0]), for: .normal)
        button2.setImage(UIImage(named: dogBreeds[1]), for: .normal)
        button3.setImage(UIImage(named: dogBreeds[2]), for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


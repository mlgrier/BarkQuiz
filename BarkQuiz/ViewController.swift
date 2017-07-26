//
//  ViewController.swift
//  BarkQuiz
//
//  Created by Marco Grier on 7/24/17.
//  Copyright © 2017 mlgrier. All rights reserved.
//

import GameplayKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var dogBreeds = [String]()
    var correctAnswer = 0
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogBreeds += ["afghan hound", "airedale terrier", "akita", "alaskan malamute", "american eskimo dog", "american stafford terrier", "australian cattle dog", "australian shepherd", "australian terrier", "basenji", "basset hound", "beagle", "bearded collie", "bedlington terrier", "belgian sheepdog", "bernese mountain dog", "bichon frise", "bloodhound"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    func askQuestion() {
        //make the pictures random. just pulls from the array. need the import GameplayKit
        dogBreeds = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: dogBreeds) as! [String]
        
        button1.setImage(UIImage(named: dogBreeds[0]), for: .normal)
        button2.setImage(UIImage(named: dogBreeds[1]), for: .normal)
        button3.setImage(UIImage(named: dogBreeds[2]), for: .normal)
        
        //needs GameplayKit to work generates a random number 0-2
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        
        //uppercases and adds names of breeds
        title = dogBreeds[correctAnswer].uppercased()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


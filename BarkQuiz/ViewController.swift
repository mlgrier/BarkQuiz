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
        
        dogBreeds += ["afghan hound", "airedale terrier", "akita", "alaskan malamute", "american eskimo dog", "american stafford terrier", "australian cattle dog", "australian shepherd", "australian terrier", "basenji", "basset hound", "beagle", "bearded collie", "bedlington terrier", "belgian sheepdog", "bernese mountain dog", "bichon frise", "bloodhound", "bluetick coonhound", "border collie", "border terrier", "borzoi", "boston terrier", "boxer", "boykin spaniel", "briard", "brittany spaniel", "brussels griffon", "bull terrier", "bullmastiff", "cairn terrier", "cane corso", "cavalier king charles spaniel", "cesky terrier", "chesapeake bay retriever", "chihuahua", "chinese crested", "chinese shar pei", "chow chow", "cocker spaniel", "collie", "coton de tulear", "dachshund", "dalmatian", "doberman pinscher", "dogue de bordeaux", "english bulldog", "finnish spitz", "flat coated retriever", "fox terrier", "french bulldog", "german shepherd", "german shorthaired pointer", "golden retriever", "goldendoodle", "great dane", "great pyrenees", "greyhound", "havanese", "irish setter", "irish terrier", "jack russell terrier", "japanese chin", "swiss shepherd dog", "yorkshire terrier"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion(action: nil)
    }
    
    func askQuestion(action: UIAlertAction!) {
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

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


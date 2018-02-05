//
//  ViewController.swift
//  Word Garden
//
//  Created by JB Bruggeman on 2/4/18.
//  Copyright © 2018 JB Bruggeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    @IBOutlet weak var guessCountLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }

    func updateUIAfterGuess() {
        guessLetterField.resignFirstResponder()
        guessLetterField.text = ""
    }
    
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        if let letterGuess = guessLetterField.text?.last {
            guessLetterField.text = String(letterGuess)
            guessLetterButton.isEnabled = true
        } else {
            //disable button if I don't have an entry into the letter guessed field
            guessLetterButton.isEnabled = false
        }

    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}


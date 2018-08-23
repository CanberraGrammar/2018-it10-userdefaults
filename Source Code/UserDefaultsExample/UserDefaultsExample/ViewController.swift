//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by MPP on 23/8/18.
//  Copyright © 2018 Matthew Purcell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func saveButtonTapped() {
        
        let userDefaults = UserDefaults.standard
        
        // Example 1: Saving from the text field into user defaults
        
        //userDefaults.set(nameTextField.text, forKey: "userName")
        
    
        // Example 2: Saving an array into user defaults
        
        //let highScoresArray = [10, 5, 100]
        //userDefaults.set(highScoresArray, forKey: "highScoresArray")
        
        
        // Example 3: Saving a dictionary into user defaults
        
        let highScoresDictionary = ["Zack": 2, "Dylan": 100, "Hamish": 500]
        userDefaults.set(highScoresDictionary, forKey: "highScoresDict")
        
        
    }
    
    @IBAction func loadButtonTapped() {
        
        let userDefaults = UserDefaults.standard
        
        // Example 1: Loaded from user defaults into text field
        
        //let userDefaults = UserDefaults.standard
        //nameTextField.text = userDefaults.value(forKey: "userName") as? String
        
        
        // Example 2: Loading an array from user defaults and printing to the console
        
        //let userDefaults = UserDefaults.standard
        //let loadedHighScoresArray = userDefaults.value(forKey: "highScoresArray") as? Array<Int>
        //print(loadedHighScoresArray!)
        
        
        // Example 3: Loading a dictionary from user defaults
        
        let loadedHighScoresDictionary = userDefaults.value(forKey: "highScoresDict") as? [String: Int]
        
        // Loop through the dictionary
        for key in loadedHighScoresDictionary!.keys {
            
            print("\(key) => \(loadedHighScoresDictionary![key]!)")
            
        }
        
    }

}


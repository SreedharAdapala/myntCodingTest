//
//  ViewController.swift
//  MintCodingTest
//
//  Created by Perennials on 25/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let inputString1 = "ABCDABCABC"
        let result1 = getTheAlternateStringCharactersFrom(inputString1)
        print(result1)
        let repititiveCharacters = getTheCharactersRepititiveCountEqualTo(3, inputString: result1)
        print("Repititive characters: \(repititiveCharacters)")
        
        let inputString2 = "ABCDEABCDEABCDE"
        let result2 = getTheAlternateStringCharactersFrom(inputString2)
        print(result2)
        let repititiveCharacters2 = getTheCharactersRepititiveCountEqualTo(3, inputString: result2)
        print("Repititive characters: \(repititiveCharacters2)")
    }
    
    func getTheAlternateStringCharactersFrom(_ inputString: String) -> String {
        var resultString = ""
        
        for (index, char) in inputString.enumerated() {
            if index % 2 == 0 {
                resultString.append(char)
            }
        }
        return resultString
    }
    
    func getTheCharactersRepititiveCountEqualTo(_ count: Int, inputString: String) -> String {
        var characterCount: [Character: Int] = [:]
        
        for char in inputString {
            characterCount[char, default: 0] += 1
        }
        
        let result = characterCount.filter { $0.value == count }.map { String($0.key) }.joined()
        return result
        
    }


}


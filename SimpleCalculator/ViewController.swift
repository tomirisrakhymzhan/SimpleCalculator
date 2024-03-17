//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Томирис Рахымжан on 17/03/2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var plus: UIButton!
    
    @IBOutlet weak var minus: UIButton!
    
    @IBOutlet weak var multiply: UIButton!
    
    @IBOutlet weak var divide: UIButton!
    
    @IBOutlet weak var firstInput: UITextField!
    
    
    @IBOutlet weak var answer: UILabel!
    
    
    @IBOutlet weak var secondInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set buttons's corner radiuses
        plus.layer.cornerRadius = 15
        minus.layer.cornerRadius = 15
        multiply.layer.cornerRadius = 15
        divide.layer.cornerRadius = 15
        
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        if let firstInputText = firstInput.text, let secondInputText = secondInput.text {
            let result: Double = (Double(firstInputText) ?? 0) + (Double(secondInputText) ?? 0)
            answer.text = String(result)
            print("Plus operation \(firstInputText) + \(secondInputText) = \(result)")
        }
    }
    
    
    @IBAction func minusPressed(_ sender: Any) {
        if let firstInputText = firstInput.text, let secondInputText = secondInput.text {
            let result: Double = (Double(firstInputText) ?? 0) - (Double(secondInputText) ?? 0)
            answer.text = String(result)
            print("Minus operation \(firstInputText) - \(secondInputText) = \(result)")
        }
    }
    

    @IBAction func multiplyOperation(_ sender: Any) {
        if let firstInputText = firstInput.text, let secondInputText = secondInput.text {
            let result: Double = (Double(firstInputText) ?? 0) * (Double(secondInputText) ?? 0)
            answer.text = String(result)
            print("Multiplication operation \(firstInputText) * \(secondInputText) = \(result)")
        }
    }
    
    
    @IBAction func dividePressed(_ sender: Any) {
        if let firstInputText = firstInput.text, let secondInputText = secondInput.text {
            if secondInputText == "0" {
                answer.text = "Cannot divide by 0"
            } else {
                let result: Double = (Double(firstInputText) ?? 0) / (Double(secondInputText) ?? 1)
                answer.text = String(result)
                print("Division operation \(firstInputText) ÷ \(secondInputText) = \(result)")
            }
            
        }
    }
}


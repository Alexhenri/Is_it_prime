//
//  ViewController.swift
//  Is_it_Prime
//
//  Created by Alexandre Henrique Silva on 06/03/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    func isItPrime(number: Int) -> Int {
        var i = number - 1
        while i > 1 {
            if number % i == 0 {
                return i
            }
            i = i - 1
        }
        return 1
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if let numberToCheckString = numberTextField.text {
            if let numberToCheck = Int(numberToCheckString){
                let result = isItPrime(number: numberToCheck)
                if result == 1 {
                    resultLabel.textColor   = UIColor.green
                    resultLabel.text        = "The number \(numberToCheckString) is prime!"
                } else {
                    resultLabel.textColor   = UIColor.red
                    resultLabel.text        = "The number \(numberToCheckString) is not prime! It is divisible by \(result)."
                }
            } else {
                print("Error \(#line): non-numeric character inputed")
                resultLabel.textColor   = UIColor.red
                resultLabel.text        = "Enter a positive whole number."
            }
        } else {
            print("Error \(#line): could not get any text from numberTextField")
            resultLabel.textColor   = UIColor.red
            resultLabel.text        = "Enter a positive whole number."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  SumCalculatorHW5
//
//  Created by Deniz Yüce on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var equationString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func oneNumber(_ sender: Any) {
        equationString.append("1")
        resultLabel.text = equationString
    }
    
    @IBAction func twoNumber(_ sender: Any) {
        equationString.append("2")
        resultLabel.text = equationString
    }
    
    @IBAction func threeNumber(_ sender: Any) {
        equationString.append("3")
        resultLabel.text = equationString
    }
    
    @IBAction func fourNumber(_ sender: Any) {
        equationString.append("4")
        resultLabel.text = equationString
    }
    
    @IBAction func fiveNumber(_ sender: Any) {
        equationString.append("5")
        resultLabel.text = equationString
    }
    
    @IBAction func sixNumber(_ sender: Any) {
        equationString.append("6")
        resultLabel.text = equationString
    }
    
    @IBAction func sevenNumber(_ sender: Any) {
        equationString.append("7")
        resultLabel.text = equationString
    }
    
    @IBAction func eightNumber(_ sender: Any) {
        equationString.append("8")
        resultLabel.text = equationString
    }
    
    @IBAction func nineNumber(_ sender: Any) {
        equationString.append("9")
        resultLabel.text = equationString
    }
    
    @IBAction func zeroNumber(_ sender: Any) {
        equationString.append("0")
        resultLabel.text = equationString
    }
    
    @IBAction func sumSign(_ sender: Any) {
        equationString.append("+")
        resultLabel.text = equationString
    }
    
    @IBAction func equalSign(_ sender: Any) {
        let result = calculate(equation: equationString)
        resultLabel.text = String(result)
        equationString = ""
        print("\(equationString) ff")
    }
    
    @IBAction func clearButton(_ sender: Any) {
        equationString = ""
        resultLabel.text = "0"
    }
    
    func calculate(equation:String) -> Int {
        let array = equation.split(separator: "+")
        var sum = 0
        print(array)
        for n in array {
            if let value = Int(n) {
                sum += value
             }else {
                 print("Girilen veri hatalı")
             }
            print(sum)
        }
        return sum
    }
}


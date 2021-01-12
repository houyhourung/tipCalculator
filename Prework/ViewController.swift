//
//  ViewController.swift
//  Prework
//
//  Created by HouyHour Ung on 1/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tipControl: UISegmentedControl!

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBAction func peopleStepper(_ sender: UIStepper) {
        //display number of people
       numPeopleTextField.text = String(NSNumber(value: sender.value).stringValue)
    }
   
    @IBOutlet weak var numPeopleTextField: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get intial billAmount
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15,0.18,0.2]
        //calculating tips
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let people = Double(numPeopleTextField.text!) ?? 1
        let total = (bill + tip) / people
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


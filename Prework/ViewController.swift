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
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get intial billAmount
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
       let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


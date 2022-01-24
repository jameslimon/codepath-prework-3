//
//  ViewController.swift
//  Prework
//
//  Created by yassar rich on 1/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextfield: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Gets the bill amount from text field input
        let bill = Double(billAmountTextfield.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Updates the total amount
        totalLabel.text = String(format: "$%.2f", total)
        }


}


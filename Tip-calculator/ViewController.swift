//
//  ViewController.swift
//  Tip-calculator
//
//  Created by Hassan Amjad on 1/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get inittial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        //Calculatge tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
  

}


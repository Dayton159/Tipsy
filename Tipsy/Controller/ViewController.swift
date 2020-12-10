//
//  ViewController.swift
//  Tipsy
//
//  Created by Dayton on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var billCalculator = BillCalculator()
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        // Causes the view (or one of its embedded text fields) to resign the first responder status.
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        
        let title = sender.currentTitle!
        
        billCalculator.updateTip(tip:title)
        
      
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let split = splitNumberLabel.text
        let textPrice = billTextField.text
    
        billCalculator.getPrice(price: textPrice, splitBy: split)

        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bill = billCalculator.getBill()
            destinationVC.tip = billCalculator.getTip()
            destinationVC.split = billCalculator.getSplit()
        }
    }

}


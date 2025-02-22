//
//  ViewController.swift
//  CPSC 5330 Assignment 6
//
//  Created by user273384 on 2/19/25.
//

import UIKit

class ViewController: UIViewController {

    var currencyLogic = CurrencyLogic()
    var amount : Int = 0
    
    var labelOne : String = ""
    var amountOne : String = ""
    
    var labelTwo : String = ""
    var amountTwo : String = ""
    
    var labelThree : String = ""
    var amountThree : String = ""
    
    var labelFour : String = ""
    var amountFour : String = ""
    
    @IBOutlet weak var usdTextBox: UITextField!

    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// Change to an outlet? Yes.
    @IBAction func usdTextField(_ sender: UITextField) {
    }
    
    // Euro
    @IBAction func currOneSwitch(_ sender: UISwitch) {
        currencyLogic.setCurrOneSwitch(sender.isOn)
    }
    
    @IBAction func currTwoSwitch(_ sender: UISwitch) {
        currencyLogic.setCurrTwoSwitch(sender.isOn)
    }
    
    @IBAction func currThreeSwitch(_ sender: UISwitch) {
        currencyLogic.setCurrThreeSwitch(sender.isOn)
    }
    
    @IBAction func currFourSwitch(_ sender: UISwitch) {
        currencyLogic.setCurrFourSwitch(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        //var tempString: String = "50"
        let tempString = usdTextBox.text!
        print("Amount in textbox \(tempString)")
        amount = currencyLogic.getAmount(tempString)
        if amount == 0 {
            errorLabel.text = "Error, Enter value in whole dollars"
        } else {
            errorLabel.text = " "
            labelOne = currencyLogic.getCurrLabelOne()
            amountOne = currencyLogic.getCurrOneString()
            
            labelTwo = currencyLogic.getCurrLabelTwo()
            amountTwo = currencyLogic.getCurrTwoString()
            
            labelThree = currencyLogic.getCurrLabelThree()
            amountThree = currencyLogic.getCurrThreeString()
            
            labelFour = currencyLogic.getCurrLabelFour()
            amountFour = currencyLogic.getCurrFourString()
            self.performSegue(withIdentifier: "toCurrency", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCurrency" {
            let currNavigation = segue.destination as! CurrencyView
            currNavigation.labelOne = labelOne
            currNavigation.amountOne = amountOne
            currNavigation.labelTwo = labelTwo
            currNavigation.amountTwo = amountTwo
            currNavigation.labelThree = labelThree
            currNavigation.amountThree = amountThree
            currNavigation.labelFour = labelFour
            currNavigation.amountFour = amountFour
            currNavigation.amount = amount
            
            
        }
    }
    
    
}


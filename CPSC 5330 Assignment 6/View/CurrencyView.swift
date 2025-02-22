//
//  CurrencyView.swift
//  CPSC 5330 Assignment 6
//
//  Created by user273384 on 2/21/25.
//

import UIKit

class CurrencyView: UIViewController {

    var amount : Int = 0
    
    var labelOne : String = ""
    var amountOne : String = ""
    
    var labelTwo : String = ""
    var amountTwo : String = ""
    
    var labelThree : String = ""
    var amountThree : String = ""
    
    var labelFour : String = ""
    var amountFour : String = ""

    @IBOutlet weak var usDollarLabel: UILabel!
    
    @IBOutlet weak var currOneLabel: UILabel!
    
    @IBOutlet weak var currOneAmount: UILabel!
    
    @IBOutlet weak var currTwoLabel: UILabel!
    
    @IBOutlet weak var currTwoAmount: UILabel!
    
    @IBOutlet weak var currThreeLabel: UILabel!
    
    @IBOutlet weak var currThreeAmount: UILabel!
    
    @IBOutlet weak var currFourLabel: UILabel!
    
    @IBOutlet weak var currFourAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usDollarLabel.text = "Amount in US Dollars: $\(amount).00"
        
        currFourLabel.text = labelFour
        currFourAmount.text = amountFour
        
        currThreeLabel.text = labelThree
        currThreeAmount.text = amountThree
        
        currTwoLabel.text = labelTwo
        currTwoAmount.text = amountTwo
        
        currOneLabel.text = labelOne
        currOneAmount.text = amountOne

        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

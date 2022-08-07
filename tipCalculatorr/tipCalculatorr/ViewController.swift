//
//  ViewController.swift
//  tipCalculatorr
//
//  Created by Ajay Devnani on 8/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTotal(_ sender: UISlider) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPErcentage = Double(sender.value) * 100
        tipPercent.text = String(Int(tipPErcentage)) + "%"
        let tip = (bill * floor(tipPErcentage) * 0.01)
        let total = tip + bill
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
}


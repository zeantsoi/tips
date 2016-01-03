//
//  ViewController.swift
//  tips
//
//  Created by Zean Tsoi on 1/2/16.
//  Copyright © 2016 Zean Tsoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var billField: UITextField!
  @IBOutlet weak var tipLabel: UILabel!
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var tipControl: UISegmentedControl!

  override func viewDidLoad() {
    super.viewDidLoad()
    tipLabel.text = "$100.00"
    totalLabel.text = "$100.00"
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func onEditingChanged(sender: AnyObject) {
    if (billField.text != "") {
      var tipPercentages = [0.18, 0.2, 0.22]
      let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex];
      let billAmount = Double(billField.text!);
      let tip = billAmount! * tipPercentage
      let total = tip + billAmount!
      tipLabel.text = String(format: "$%.2f", tip)
      totalLabel.text = String(format: "$%.2f", total)
    } else {
      tipLabel.text = "$0.00"
      totalLabel.text = "$0.00"
    }

  }

  @IBAction func onTap(sender: AnyObject) {
      view.endEditing(true)
  }

}


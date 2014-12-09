//
//  ViewController.swift
//  Temperature
//
//  Created by David Carter on 12/8/14.
//  Copyright (c) 2014 Nicole Nichols. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureTitleLabel: UILabel!
    @IBOutlet weak var DegreeFTextBox: UITextField!
    @IBOutlet weak var DegreeCTextBox: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Button(sender: UIButton)
    {
//      Double((varibleName as NSString).doubleValue)
        var degreeF = 0.0
        var degreeC = 0.0
        if (!DegreeFTextBox.text.isEmpty)
        {
            var degreeF = DegreeFTextBox.text
            var string = NSString(string: degreeF).doubleValue
            var degreeC = (string - 32) * (5.0/9.0)
            temperatureTitleLabel.text = NSString(format: "ºC: %.2f", degreeC)
        }
        else
        {
            var degreeC = DegreeCTextBox.text
            var string = NSString(string: degreeC).doubleValue
            var degreeF = string * (9/5) + 32
            temperatureTitleLabel.text = NSString(format: "ºF: %.2f", degreeF)

        }
        temperatureTitleLabel.hidden = false
    }

}


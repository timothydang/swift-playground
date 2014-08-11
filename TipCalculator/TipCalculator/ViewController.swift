//
//  ViewController.swift
//  TipCalculator
//
//  Created by Timothy Dang on 8/08/2014.
//  Copyright (c) 2014 Timothy Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var taxPctSlider: UISlider!
    @IBOutlet var taxPctLabel: UILabel!
    @IBOutlet var resultsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTapped(sender : AnyObject) {
    }

    @IBAction func taxPercentageChanged(sender : AnyObject) {
    }

    @IBAction func viewTapped(sender : AnyObject) {
    }
}


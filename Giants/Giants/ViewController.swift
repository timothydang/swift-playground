//
//  ViewController.swift
//  Giants
//
//  Created by Timothy Dang on 6/01/2015.
//  Copyright (c) 2015 Timothy Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let img = imageView.image
        imageView.image = img?.cropToCircleWithBorderColor(UIColor(red:1, green:0.33, blue:0.08, alpha:1), lineWidth: 20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


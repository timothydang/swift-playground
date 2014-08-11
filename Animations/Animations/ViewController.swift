//
//  ViewController.swift
//  Animations
//
//  Created by Timothy Dang on 11/08/2014.
//  Copyright (c) 2014 Timothy Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var numberOfCellSlider: UISlider!

    @IBAction func animateButtonPressed(sender: AnyObject) {
        let numberOfCell = Int(self.numberOfCellSlider.value)

        for loopNumber in 1...numberOfCell {

            let size:CGFloat = CGFloat( Int(rand()) %  40 + 20.0 )
            let yPosition:CGFloat = CGFloat( Int(rand()) %  200 + 20.0 )
            let delay = NSTimeInterval( ((Int(rand()) %  900)+100.0) / 1000.0)

            let colorSquare = UIView()
            colorSquare.backgroundColor = UIColor.blueColor()
            colorSquare.frame = CGRect(x: 0 - size, y: yPosition, width: size, height: size)
            self.view.addSubview(colorSquare)
            
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                colorSquare.backgroundColor = UIColor.redColor()

                colorSquare.frame = CGRect(x: 320-50, y: yPosition, width: size, height: size)
                }, completion: { animationFinished in
                    colorSquare.removeFromSuperview()
                }
            )

        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


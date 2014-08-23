//
//  ViewController.swift
//  Animations-Part2
//
//  Created by Timothy Dang on 23/08/2014.
//  Copyright (c) 2014 Timothy Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // set container frame and add to the screen
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        // set red square frame up
        // we want the blue square to have the same position as redSquare
        // so lets just reuse blueSquare.frame
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        // set background colors
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        // for now just add the redSquare
        // we'll add blueSquare as part of the transition animation
        self.container.addSubview(self.redSquare)

    
    }

    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        // create a 'tuple' (a pair or more of objects assigned to a single variable)
        var views : (frontView: UIView, backView: UIView)
        
        // if redSquare has a superView (e.g it's in the container)
        // set redSquare as front, and blueSquare as back
        // otherwise flip the order
        if(self.redSquare.superview){
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else {
            views = (frontView: self.blueSquare, backView: self.redSquare)
        }

        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        // with no animation block, and a completion block set to 'nil' this makes a single line of code
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Story
//
//  Created by Timothy Dang on 6/01/2015.
//  Copyright (c) 2015 Timothy Dang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var well: NSColorWell! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: AnyObject? {
        didSet {
        }
    }

    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject!) {

        let second = segue.destinationController as SecondController
        second.representedObject = well.color
    }
}


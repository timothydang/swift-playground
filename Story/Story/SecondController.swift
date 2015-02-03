//
//  SecondController.swift
//  Story
//
//  Created by Timothy Dang on 6/01/2015.
//  Copyright (c) 2015 Timothy Dang. All rights reserved.
//

import Cocoa

class SecondController: NSViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @IBOutlet var box: NSBox! = nil

    @IBAction func dismiss(sender: AnyObject) {
        self.dismissController(self)
    }

    override func viewWillAppear() {
        let color = self.representedObject as NSColor
        box.fillColor = color

    }
}

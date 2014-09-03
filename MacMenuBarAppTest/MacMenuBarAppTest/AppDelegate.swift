//
//  AppDelegate.swift
//  MacMenuBarAppTest
//
//  Created by Timothy Dang on 3/09/2014.
//  Copyright (c) 2014 Timothy Dang. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    var statusBar = NSStatusBar.systemStatusBar()
    var statusBarItem : NSStatusItem = NSStatusItem()
    var menu: NSMenu = NSMenu()
    var menuItem : NSMenuItem = NSMenuItem()

    override func awakeFromNib() {
        statusBarItem = statusBar.statusItemWithLength(-1)
        statusBarItem.menu = menu
        statusBarItem.title = nil
        var icon = NSImage(named: "logo")
        icon.size = NSSize(width: 18, height: 18)
        statusBarItem.image = icon
        statusBarItem.highlightMode = true

        menuItem.title = "Blah"
        menuItem.keyEquivalent = ""
        menu.addItem(menuItem)
        menuItem.action = Selector("clickMenuItem:")
    }

    func clickMenuItem(sender: AnyObject) {
        NSLog("clickMenuItem")
        NSWorkspace.sharedWorkspace().openURL(NSURL.URLWithString("http://www.google.com"))
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
    }


}


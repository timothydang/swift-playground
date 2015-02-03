//
//  UIImage+Cropping.swift
//  Giants
//
//  Created by Timothy Dang on 6/01/2015.
//  Copyright (c) 2015 Timothy Dang. All rights reserved.
//

import UIKit

extension UIImage {
    
    func cropToCircleWithBorderColor(color: UIColor, lineWidth: CGFloat) -> UIImage {
        
        let imgRect = CGRect(origin: CGPointZero, size: self.size)

        UIGraphicsBeginImageContext(imgRect.size)
        var context = UIGraphicsGetCurrentContext()
        
        CGContextAddEllipseInRect(context, imgRect)
        CGContextClip(context)
        
        self.drawAtPoint(CGPointZero)

        CGContextAddEllipseInRect(context, imgRect)
        color.setStroke()
        CGContextSetLineWidth(context, lineWidth)
        CGContextStrokePath(context)

        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        
        return newImage
    }
}

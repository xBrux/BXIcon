//
//  BXIcon.swift
//  BXIconDemo
//
//  Created by BRUX on 10/15/15.
//  Copyright © 2015 Brux. All rights reserved.
//

import UIKit

class BXIcon : NSObject {

    private static let SharedInstance = BXIcon()
    class func sharedIcons() -> BXIcon {
        return SharedInstance
    }
    
    func iconImage(iconName iconName:String, imageSize:CGSize, fillColor:UIColor) -> UIImage? {
        guard let path = path(iconName : iconName, size: imageSize) else {return nil}
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.mainScreen().scale)
        
        fillColor.set()
        path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
    
    func path(iconName iconName:String) -> UIBezierPath? {
        let selector = Selector("\(iconName)Path")
        guard self.respondsToSelector(selector) else { return nil }
        
        let unmanaged = self.performSelector(selector)
        return (unmanaged.takeUnretainedValue() as? UIBezierPath)
    }
    
    func path(iconName iconName:String, size:CGSize) -> UIBezierPath? {
        guard let path = path(iconName : iconName) else {return nil}
        let transform = CGAffineTransformMakeScale(size.width / 100.0,
            size.height / 100.0)
        path.applyTransform(transform)
        return path
    }
    
}


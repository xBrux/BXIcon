//
//  StarPathExt.swift
//  BXIconDemo
//
//  Created by BRUX on 10/21/15.
//  Copyright © 2015 Brux. All rights reserved.
//

import UIKit

extension BXIcon {
    
    func starPath() -> UIBezierPath {
        let aPath = UIBezierPath()
        aPath.moveToPoint(CGPointMake(50, 10))
        aPath.addLineToPoint(CGPointMake(59.07, 39.51))
        aPath.addLineToPoint(CGPointMake(89.94, 39.02))
        aPath.addLineToPoint(CGPointMake(64.68, 56.77))
        aPath.addLineToPoint(CGPointMake(74.69, 85.98))
        aPath.addLineToPoint(CGPointMake(50, 67.44))
        aPath.addLineToPoint(CGPointMake(25.31, 85.98))
        aPath.addLineToPoint(CGPointMake(35.32, 56.77))
        aPath.addLineToPoint(CGPointMake(10.06, 39.02))
        aPath.addLineToPoint(CGPointMake(40.93, 39.51))
        aPath.closePath()
        return aPath
    }
}
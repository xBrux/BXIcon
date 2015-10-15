//
//  BowlPathExt.swift
//  BXIconDemo
//
//  Created by BRUX on 10/15/15.
//  Copyright © 2015 Brux. All rights reserved.
//

import UIKit

extension BXIcon {
    
    func bowlPath() -> UIBezierPath {
        let aPath = UIBezierPath()
        aPath.moveToPoint(CGPointMake(98.97, 36.77))
        aPath.addCurveToPoint(CGPointMake(92.03, 60.39), controlPoint1: CGPointMake(98.67, 40.96), controlPoint2: CGPointMake(97.21, 52.38))
        aPath.addCurveToPoint(CGPointMake(50, 85), controlPoint1: CGPointMake(83.19, 74.07), controlPoint2: CGPointMake(66.73, 85))
        aPath.addCurveToPoint(CGPointMake(7.49, 59.31), controlPoint1: CGPointMake(32.88, 85), controlPoint2: CGPointMake(16.25, 73.21))
        aPath.addCurveToPoint(CGPointMake(1, 36.1), controlPoint1: CGPointMake(2.41, 51.24), controlPoint2: CGPointMake(1, 40.38))
        aPath.addCurveToPoint(CGPointMake(1.05, 35.18), controlPoint1: CGPointMake(1, 35.79), controlPoint2: CGPointMake(1.02, 35.48))
        aPath.addCurveToPoint(CGPointMake(50, 15), controlPoint1: CGPointMake(2.17, 23.95), controlPoint2: CGPointMake(23.65, 15))
        aPath.addCurveToPoint(CGPointMake(99, 36.1), controlPoint1: CGPointMake(77.06, 15), controlPoint2: CGPointMake(99, 24.45))
        aPath.addCurveToPoint(CGPointMake(98.97, 36.77), controlPoint1: CGPointMake(99, 36.32), controlPoint2: CGPointMake(98.99, 36.55))
        aPath.closePath()
        aPath.moveToPoint(CGPointMake(50.1, 25.95))
        aPath.addCurveToPoint(CGPointMake(12.6, 36.45), controlPoint1: CGPointMake(29.39, 25.95), controlPoint2: CGPointMake(12.6, 30.65))
        aPath.addCurveToPoint(CGPointMake(50.1, 46.95), controlPoint1: CGPointMake(12.6, 42.25), controlPoint2: CGPointMake(29.39, 46.95))
        aPath.addCurveToPoint(CGPointMake(87.61, 36.45), controlPoint1: CGPointMake(70.82, 46.95), controlPoint2: CGPointMake(87.61, 42.25))
        aPath.addCurveToPoint(CGPointMake(50.1, 25.95), controlPoint1: CGPointMake(87.61, 30.65), controlPoint2: CGPointMake(70.82, 25.95))
        aPath.closePath()
        return aPath
    }

}

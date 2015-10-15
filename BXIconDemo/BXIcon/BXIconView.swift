//
//  BXIconView.swift
//  BXIconDemo
//
//  Created by BRUX on 10/21/15.
//  Copyright © 2015 Brux. All rights reserved.
//

import UIKit

@IBDesignable
class BXIconView: UIControl {

    @IBInspectable var iconName:String = "" {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var color:UIColor = UIColor.grayColor() {
        didSet {
            layoutSubviews()
        }
    }
    
    private let iconLayer = CAShapeLayer()
    
    override func layoutSubviews() {
        guard let path = BXIcon().path(iconName: iconName, size: bounds.size) else {
            iconLayer.removeFromSuperlayer()
            return
        }
        
        iconLayer.path = path.CGPath
        iconLayer.fillColor = color.CGColor
        layer.addSublayer(iconLayer)
    }

}

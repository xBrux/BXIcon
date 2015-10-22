//
//  ViewController.swift
//  BXIconDemo
//
//  Created by BRUX on 10/15/15.
//  Copyright © 2015 Brux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iconView: BXIconView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = BXIcon().iconImage(iconName:"bowl", imageSize: CGSize(width: 100, height: 100), fillColor: UIColor.redColor())
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showButtonTouched(sender: AnyObject) {
        guard let iconName = textField.text else { return }
        
        let image = BXIcon().iconImage(iconName:iconName, imageSize: CGSize(width: 100, height: 100), fillColor: UIColor.redColor())
        imageView.image = image
        
        iconView.iconName = iconName
    }

}


//
//  Extensions+Helper.swift
//  Wallet App
//
//  Created by Jaskirat Singh on 26/05/18.
//  Copyright © 2018 jassie. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}

extension UIButton {
    func roundedButton() {
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
    func shadowButton() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.5
    }
}

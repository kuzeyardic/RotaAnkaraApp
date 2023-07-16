//
//  UIButtonExtension.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import Foundation
import UIKit

extension UIButton {
    func setButton(title: String)
    {
        let buttonGradientLayer = CAGradientLayer()
        buttonGradientLayer.frame = self.bounds
        buttonGradientLayer.colors = [
            UIColor(red: 190/255, green: 49/255, blue: 102/255, alpha: 1.0).cgColor,
            UIColor(red: 130/255, green: 98/255, blue: 165/255, alpha: 1.0).cgColor,
            UIColor(red: 196/255, green: 225/255, blue: 241/255, alpha: 1.0).cgColor
        ]
        buttonGradientLayer.startPoint = CGPoint(x: 0, y: 1)
        buttonGradientLayer.endPoint = CGPoint(x: 1, y: 1)
        buttonGradientLayer.cornerRadius = 27
        
        self.layer.insertSublayer(buttonGradientLayer, at: 0)
        
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        self.contentEdgeInsets = UIEdgeInsets(top: 13, left: 55, bottom: 13, right: 55)
    }
}

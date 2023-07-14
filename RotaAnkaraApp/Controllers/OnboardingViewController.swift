//
//  ViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 13.07.2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register Button
        registerButton.setButton( title: "Hesap oluştur")
        
        // Login Button
        loginButton.setButton(title: "Giriş yap")

    }
    
  
}


extension UIView {
    func applyGradient(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
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
        buttonGradientLayer.cornerRadius = 33
        
        self.layer.insertSublayer(buttonGradientLayer, at: 0)
        
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        self.contentEdgeInsets = UIEdgeInsets(top: 13, left: 55, bottom: 13, right: 55)
    }
}



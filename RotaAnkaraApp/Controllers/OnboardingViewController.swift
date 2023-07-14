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




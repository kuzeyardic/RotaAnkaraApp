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
        let registerGradientLayer = CAGradientLayer()
        registerGradientLayer.frame = registerButton.bounds
        registerGradientLayer.colors = [
            UIColor(red: 190/255, green: 49/255, blue: 102/255, alpha: 1.0).cgColor,
            UIColor(red: 130/255, green: 98/255, blue: 165/255, alpha: 1.0).cgColor,
            UIColor(red: 196/255, green: 225/255, blue: 241/255, alpha: 1.0).cgColor
        ]
        registerGradientLayer.startPoint = CGPoint(x: 0, y: 0)
        registerGradientLayer.endPoint = CGPoint(x: 1, y: 1)
        registerGradientLayer.cornerRadius = 33
        
        registerButton.layer.insertSublayer(registerGradientLayer, at: 0)
        
        registerButton.setTitle("Hesap Oluştur", for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        registerButton.contentEdgeInsets = UIEdgeInsets(top: 13, left: 55, bottom: 13, right: 55)
        
        // Login Button
        let loginGradientLayer = CAGradientLayer()
        loginGradientLayer.frame = loginButton.bounds
        loginGradientLayer.colors = [
            UIColor(red: 190/255, green: 49/255, blue: 102/255, alpha: 1.0).cgColor,
            UIColor(red: 130/255, green: 98/255, blue: 165/255, alpha: 1.0).cgColor
        ]
        loginGradientLayer.startPoint = CGPoint(x: 0, y: 0)
        loginGradientLayer.endPoint = CGPoint(x: 1, y: 1)
        loginGradientLayer.cornerRadius = 33
        
        loginButton.layer.insertSublayer(loginGradientLayer, at: 0)
        
        loginButton.setTitle("Giriş Yap", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        loginButton.contentEdgeInsets = UIEdgeInsets(top: 13, left: 55, bottom: 13, right: 55)
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


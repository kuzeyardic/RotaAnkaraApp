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
        registerButton.backgroundColor = .red
        registerButton.layer.cornerRadius = 33
        registerButton.setTitle("Hesap Oluştur", for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        registerButton.contentEdgeInsets = UIEdgeInsets(top: 13, left: 55, bottom: 13, right: 55)
       
        
        // Login Button
        loginButton.backgroundColor = .red
        loginButton.layer.cornerRadius = 33
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


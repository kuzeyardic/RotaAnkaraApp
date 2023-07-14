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







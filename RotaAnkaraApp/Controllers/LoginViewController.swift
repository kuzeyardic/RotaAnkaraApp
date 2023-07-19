//
//  LoginViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginPasswordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var loginEmailTextField: UITextField!
    @IBOutlet weak var bb2: UIButton!
    @IBOutlet weak var bb1: UIButton!
    @IBOutlet weak var loginToAppButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let scale: CGFloat = 0.45 // 1.5 times the original size
        rememberMeSwitch.transform = CGAffineTransform(scaleX: scale, y: scale)
        loginToAppButton.setButton(title: "Giriş Yap")
        bb1.setButton(title: "")
        bb2.setButton(title: "")
        loginPasswordTextField.textContentType = .username
    }
    
    @IBAction func loginEmailPressed(_ sender: UITextField) {
        loginEmailTextField.text = ""
    }
    
    @IBAction func loginPasswordPressed(_ sender: UITextField) {
        loginPasswordTextField.text = ""
        loginPasswordTextField.isSecureTextEntry = true
    }
}

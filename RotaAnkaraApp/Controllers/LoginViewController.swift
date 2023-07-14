//
//  LoginViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bb2: UIButton!
    @IBOutlet weak var bb1: UIButton!
    @IBOutlet weak var loginToAppButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        loginToAppButton.setButton(title: "Giriş Yap")
        bb1.setButton(title: "")
        bb2.setButton(title: "")
    }
    
  
}

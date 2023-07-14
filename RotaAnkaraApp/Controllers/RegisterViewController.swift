//
//  RegisterViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class RegisterViewController: UIViewController {


    @IBOutlet weak var passwordConfirmFieldRegister: UITextField!
    @IBOutlet weak var passwordFieldRegister: UITextField!
    @IBOutlet weak var surnameFieldRegister: UITextField!
    @IBOutlet weak var nameFieldRegister: UITextField!
    @IBOutlet weak var emailFieldRegister: UITextField!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var registerToAppButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        self.navigationItem.hidesBackButton = true
        registerToAppButton.setButton(title: "Kayıt Ol")
        b1.setButton(title: "")
        b2.setButton(title: "")
        b3.setButton(title: "")
        b4.setButton(title: "")
        b5.setButton(title: "")
        passwordFieldRegister.textContentType = .username
        passwordConfirmFieldRegister.textContentType = .username
    }

    @IBAction func emailFieldRegisterPressed(_ sender: UITextField) {
        emailFieldRegister.text = ""
    }
    
    @IBAction func nameFieldRegisterPressed(_ sender: UITextField) {
        nameFieldRegister.text = ""
    }
    
    @IBAction func surnameFieldRegisterPressed(_ sender: UITextField) {
        surnameFieldRegister.text = ""
    }
    
    @IBAction func passwordFieldRegisterPressed(_ sender: UITextField) {
        passwordFieldRegister.text = ""
        passwordFieldRegister.isSecureTextEntry = true
    }
    
    @IBAction func passwordConfirmRegisterPressed(_ sender: UITextField) {
        passwordConfirmFieldRegister.text = ""
        passwordConfirmFieldRegister.isSecureTextEntry = true
    }
    
}

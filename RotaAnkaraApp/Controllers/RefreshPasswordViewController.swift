//
//  RefreshPasswordViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class RefreshPasswordViewController: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var refreshColorButton: UIButton!
    @IBOutlet weak var refreshColorButton2: UIButton!
    @IBOutlet weak var newPasswordAgainRefreshField: UITextField!
    @IBOutlet weak var newPasswordRefreshField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        newPasswordRefreshField.textContentType = .username
        newPasswordAgainRefreshField.textContentType = .username
        refreshColorButton.setButton(title: "")
        refreshColorButton2.setButton(title: "")
        confirmButton.setButton(title: "Onayla")
    }
    
     @IBAction func newPasswordRefreshFieldPressed(_ sender: UITextField) {
         newPasswordRefreshField.text = ""
         newPasswordRefreshField.isSecureTextEntry = true
     }
    
    @IBAction func newPasswordAgainRefreshField(_ sender: UITextField) {
        newPasswordAgainRefreshField.text = ""
        newPasswordAgainRefreshField.isSecureTextEntry = true
    }
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        
        let password = newPasswordRefreshField.text
        let passwordAgain = newPasswordAgainRefreshField.text
        
        if password == passwordAgain {
            self.performSegue(withIdentifier: "renewPasswordLogin", sender: self)
        }
        else
        {
            print("The two passwords are not the same")
        }
    }
    
}

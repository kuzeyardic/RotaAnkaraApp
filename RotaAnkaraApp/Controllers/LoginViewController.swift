//
//  LoginViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginToAppButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        loginToAppButton.setButton(title: "Giriş Yap")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  RegisterViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerToAppButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        registerToAppButton.setButton(title: "Kayıt Ol")
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

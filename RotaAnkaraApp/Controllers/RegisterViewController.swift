//
//  RegisterViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class RegisterViewController: UIViewController {


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

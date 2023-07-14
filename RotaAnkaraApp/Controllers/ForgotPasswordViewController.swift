//
//  ForgotPasswordViewController.swift
//  RotaAnkaraApp
//
//  Created by Berke Kuzey Ardıç on 14.07.2023.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var sendToRefreshButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
       
        sendToRefreshButton.setButton(title: "Gönder")
        cancelButton.setButton(title: "İptal Et")
        
    }
    

   

}

//
//  LoginPage.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 04/04/1443 AH.
//

import UIKit

class LoginVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
//        showAlert("Clicked Login")
        gotoVC("TabbarVC", true)
    }
    
    
    @IBAction func didTapSignup(_ sender: Any) {
        gotoNavVC("RegisterVC", true)
    }
    
}

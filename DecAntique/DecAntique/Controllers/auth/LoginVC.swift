//
//  LoginPage.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 03/04/1443 AH.
//

import UIKit

class LoginVC: BaseVC {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func isValidCheck() -> Bool {
        if tfEmail.text!.isEmpty {
            showAlert("Please input your email.")
            return false
        } else if !isValidEmail(email: tfEmail.text!) {
            showAlert("Please input valid email.")
            return false
        } else if tfPassword.text!.isEmpty {
            showAlert("Please input password.")
            return false
        }
        
        return true
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        if !isValidCheck() {
            return
        }
        
        showLoadingView(vc: self)
        let email = tfEmail.text
        let password = tfPassword.text
        
        if let user = DataBaseHelper.shared.getOneUser(id: nil, email: email) {
            hideLoadingView()
            if user.password == password {
                userDefaluts.set(user.id, forKey: "user_id")
                userDefaluts.set(user.username, forKey: "user_name")
                userDefaluts.set(email, forKey: "user_email")
                userDefaluts.set(user.type, forKey: "user_type")
                userDefaluts.set(password, forKey: "user_pwd")
                
                gotoVC("TabbarVC", true)
            } else {
                showAlert("Please input correct password.")
            }
        } else {
            hideLoadingView()
            showAlert("Email is not registered or deleted by manager.")
        }
    }
    
    
    @IBAction func didTapSignup(_ sender: Any) {
        gotoNavVC("RegisterVC", true)
    }
    
    @IBAction func didTapViewGuest(_ sender: Any) {
        gotoVC("TabbarVC", true)
    }
}

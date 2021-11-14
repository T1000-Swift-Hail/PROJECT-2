//
//  SettingsVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 03/04/1443 AH.
//

import UIKit

class SettingsVC: BaseVC {
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    @IBOutlet weak var tfCurPwd: UITextField!
    @IBOutlet weak var tfNewPwd: UITextField!
    @IBOutlet weak var tfConfPwd: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfUsername.text = userDefaluts.string(forKey: "user_name")
        tfEmail.text = userDefaluts.string(forKey: "user_email")
    }
    
    @IBAction func didTapUpdateProfile(_ sender: Any) {
        if tfUsername.text!.isEmpty {
            showAlert("Please input user name.".localizable)
        } else if tfEmail.text!.isEmpty {
            showAlert("Please input email.".localizable)
        } else if !isValidEmail(email: tfEmail.text!)  {
            showAlert("Please input vaild email.".localizable)
        } else {
            
            let res = DataBaseHelper.shared.updateProfile(id: Int32(userDefaluts.integer(forKey: "user_id")), name: tfUsername.text!, email: tfEmail.text!)
            
            if res == "success" {
                showAlert("Your profile was updated successfuly.".localizable)
                userDefaluts.set(tfUsername.text!, forKey: "user_name")
                userDefaluts.set(tfEmail.text!, forKey: "user_email")
            } else {
                showAlert(res)
            }
        }
    }
    
    @IBAction func didTapUpdatePassword(_ sender: Any) {
        if tfCurPwd.text!.isEmpty {
            showAlert("Please input user name.".localizable)
        } else if tfCurPwd.text! != userDefaluts.string(forKey: "user_pwd") {
            showAlert("Please input current password correctly.".localizable)
        } else if tfNewPwd.text!.isEmpty {
            showAlert("Please input email.".localizable)
        } else if tfNewPwd.text != tfConfPwd.text  {
            showAlert("Please input vaild new password.".localizable)
        } else {
            
            let res = DataBaseHelper.shared.updatePassword(id: Int32(userDefaluts.integer(forKey: "user_id")), password: tfNewPwd.text!)
            
            if res == "success" {
                showAlert("Your profile was updated successfuly.".localizable)
                userDefaluts.set(tfNewPwd.text!, forKey: "user_pwd")
            } else {
                showAlert(res)
            }
        }
    }
}

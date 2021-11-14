//
//  Registration.swift
//  Metalic
//
//  Created by Anas Hamad on 03/04/1443 AH.
//

import Foundation
import UIKit


class Registration : LoginPage {
    
    
    override func viewDidLoad() {
        passRegister.isSecureTextEntry = true
        rePassword.isSecureTextEntry = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissTap))
            view.addGestureRecognizer(tap)
    }
    //MARK: -  List Of Variables
    
    
    @IBOutlet var companyName: UITextField!
    @IBOutlet var userRegister: UITextField!
    @IBOutlet var passRegister: UITextField!
    @IBOutlet var rePassword: UITextField!
    @IBOutlet var registerLabel: UILabel!
    
    
    //MARK: - Registoratio Button Action
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func RegisterBottun(_ sender: Any) {
        
        //chick if Empity
        if userRegister.text?.isEmpty == true || passRegister.text?.isEmpty == true || rePassword.text?.isEmpty == true {
            displayMyAlert(title: NSLocalizedString("Wrong", comment: ""), message: NSLocalizedString("user or password is empity", comment: ""))
        }
        // Chick if equal
        if (passRegister.text != rePassword.text){
            displayMyAlert(title: NSLocalizedString("Wrong", comment: ""), message:NSLocalizedString("Passwor don't match", comment: ""))
        }
        //User Defults
        else{
            defaults.set(userRegister.text, forKey: "userName")
            defaults.set(companyName.text, forKey: "companyName")
            defaults.set(passRegister.text, forKey: "passWord")
            displayMyAlert(title: NSLocalizedString("Registration", comment: ""), message: NSLocalizedString("You are Registed..!", comment: ""))
        }
    }
    //MARK: - Alert Function
    
    override func displayMyAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(Ok)
        present(alert, animated: true, completion: nil)
        
        
    }
    @objc override func dismissTap() {
        userRegister.resignFirstResponder()
        passRegister.resignFirstResponder()
        rePassword.resignFirstResponder()
        companyName.resignFirstResponder()
      }
}




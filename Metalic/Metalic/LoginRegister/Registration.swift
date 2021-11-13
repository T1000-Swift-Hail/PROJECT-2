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
        
        //correction inputs
        if userRegister.text?.isEmpty == true || passRegister.text?.isEmpty == true || rePassword.text?.isEmpty == true {
            DisplayMyAlert(title: "Wrong", message: "user or password is empity ")
            
        }
        if (passRegister.text != rePassword.text){
            DisplayMyAlert(title: "Wrong", message: "Passwor don't match")
        }else{
       
        
            defaults.set(userRegister.text, forKey: "userName")
            defaults.set(companyName.text, forKey: "companyName")
            defaults.set(passRegister.text, forKey: "passWord")
            
            DisplayMyAlert(title: "Registration", message: "You are Registed..!")
        }
        
//
//        
        
        
    }
 //MARK: - Alert Function
     override func DisplayMyAlert(title: String, message: String){
            
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
        let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(Ok)
            present(alert, animated: true, completion: nil)
        
            
        }
 }
        
    


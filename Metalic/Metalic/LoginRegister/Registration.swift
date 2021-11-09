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
         super.viewDidLoad()
         passRegister.isSecureTextEntry = true
         rePassword.isSecureTextEntry = true
         
  

    
}
    @IBOutlet var userRegister: UITextField!
    @IBOutlet var passRegister: UITextField!
    @IBOutlet var rePassword: UITextField!
    @IBOutlet var registerLabel: UILabel!
     var userDefaluts = UserDefaults.standard
    
    @IBAction func RegisterBottun(_ sender: Any) {
        
        
        
        
        let userName = userRegister.text
        let passWord = passRegister.text
        let rePassWord = rePassword.text
        
       
        
        
        if userName!.isEmpty || passWord!.isEmpty || rePassWord!.isEmpty {
            
            
            
            DisplayMyAlert(title: "Wrong", message: "user or password is empity ")
            return
        }
        
        if (passWord != rePassWord){
            DisplayMyAlert(title: "Wrong", message: "Passwor don't match")
        
        }
        DisplayMyAlert(title: "Registration", message: "You are Registed..!")
        
        defaults.set(userName, forKey: "userName")
        defaults.set(passWord, forKey: "PassWord")
        defaults.synchronize()
        
        
        
        
    }
    

     override func DisplayMyAlert(title: String, message: String){
            
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
        let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(Ok)
            present(alert, animated: true, completion: nil)
            
            
        }
 }
        
    


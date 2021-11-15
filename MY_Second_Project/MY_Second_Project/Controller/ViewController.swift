//
//  ViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButt: UIButton!
    
    @IBOutlet weak var userEmailSign: UITextField!
    @IBOutlet weak var userPasswordSign: UITextField!
    @IBOutlet weak var repeatPsswordSign: UITextField!
    @IBOutlet weak var signUpButt: UIButton!
    

   

    @IBAction func loginButt(_ sender: UIButton) {
        
        let userEmail = userEmailTextField.text ?? ""
        let userPassword = passwordTextField.text ?? ""
        //Check for empty fields
        //Display alert message
        if  userEmail.isEmpty || userPassword.isEmpty {
            let myAlert = UIAlertController(title:NSLocalizedString("Login Invalid", comment: ""), message:NSLocalizedString("All fields are required!", comment: ""), preferredStyle: .alert)
            let okAction = UIAlertAction(title: NSLocalizedString("ok", comment: ""), style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
    }
     else{
         //Display alert message
         let myAlert = UIAlertController(title: "Login is successfully".localized, message:"Welcome To My Perfume".localized, preferredStyle: .alert)
         let okAction = UIAlertAction(title: "ok".localized, style: .default, handler: { alertt in
             self.performSegue(withIdentifier: "loginIdentifier" , sender: nil)
             
         })
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
            
     }
 }
    
    @IBAction func createNewAcount(_ sender: UIButton) {
    performSegue(withIdentifier: "createNewAcount", sender: nil)
 }
    
    @IBAction func signUpButt(_ sender: Any) {
        
        let userEmail =  userEmailSign.text ?? ""
        let userPassword = userPasswordSign.text ?? ""
        let repeatUserPassword = repeatPsswordSign.text ?? ""
        //Check for empty fields
        //Display alert message
        if  userEmail.isEmpty || userPassword.isEmpty || repeatUserPassword.isEmpty {
            let myAlert = UIAlertController(title: "Invalid Sign-Up".localized, message:"All fields are required!".localized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok".localized, style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
            
        }
        // Check if passwords match
        //Display alert message
        else if (userPassword != repeatUserPassword){
            let alert = UIAlertController(title: "Invalid Sign-Up".localized, message:"Passwords do not match!".localized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok".localized, style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
        }
        
        else {
            //Display alert message
            let alert = UIAlertController(title: "Sign-Up is successfully".localized, message:"Welcome To My Perfume!".localized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok".localized, style: .default, handler: { al in
                self.performSegue(withIdentifier: "signUpIdentifier", sender: nil)
                
            })
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
                       
            }
        
        }
   }


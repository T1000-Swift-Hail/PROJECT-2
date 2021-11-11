//
//  ViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButt: UIButton!
    
    
    @IBOutlet weak var userEmailSign: UITextField!
    @IBOutlet weak var userPasswordSign: UITextField!
    @IBOutlet weak var repeatPsswordSign: UITextField!
    @IBOutlet weak var signUpButt: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButt(_ sender: UIButton) {
        
        let userEmail = userEmailTextField.text ?? ""
        let userPassword = passwordTextField.text ?? ""
        
        if  userEmail.isEmpty || userPassword.isEmpty {
            let myAlert = UIAlertController(title: "Login Invalid", message:"All fields are required!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
    }
     else{
            let myAlert = UIAlertController(title: "Login is successfully", message:"Welcome To My Perfume", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil) }
        
        performSegue(withIdentifier: "loginIdentifier" , sender: nil)
        }
    


            
    
    @IBAction func createNewAcount(_ sender: UIButton) {
        performSegue(withIdentifier: "createNewAcount", sender: nil)
    }
    
  
        
    
    
    @IBAction func signUpButt(_ sender: Any) {
        
        let userEmail =  userEmailSign.text ?? ""
        let userPassword = userPasswordSign.text ?? ""
        let repeatUserPassword = repeatPsswordSign.text ?? ""
        
        if  userEmail.isEmpty || userPassword.isEmpty || repeatUserPassword.isEmpty {
            let myAlert = UIAlertController(title: "Invalid Sign-Up", message:"All fields are required!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
            
        }
        
        else if (userPassword != repeatUserPassword){
            let alert = UIAlertController(title: "Invalid Sign-Up", message:"Passwords do not match!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
        }
        
        else {
            let alert = UIAlertController(title: "Sign-Up is successfully", message:"Welcome To My Perfume!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
                       
        }
        performSegue(withIdentifier: "signUpIdentifier", sender: nil)
        
       }
}



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
    }
    
    @IBAction func signUpButt(_ sender: Any) {
        
//        let userEmail = userEmailSign.text
//        let userPassword = userPasswordSign.text
//        let repeatPasswordUser = repeatPsswordSign.text
//        if ( userEmail.isEmpty || userPassword.isEmpty || repeatPasswordUser.isEmpty )
//        {
//                   displyMyAlertMessage("All fields are required!")
//                   return
//              }
//               if (userPassword1 != repeatPasswordUser1)
//             {
//                  displyMyAlertMessage("Passwords do not match!")
//                   return
//              }
//            }
//    func displyMyAlertMessage(userMessage : String){
//            var myAlert = UIAlertController(title: "Alert", message:userMessage, preferredStyle: .alert)
//           let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
//           myAlert.addAction(okAction)
//           self.presentationController(myAlert , animated : true , completion : nil)
       }
    
}


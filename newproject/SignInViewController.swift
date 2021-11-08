//
//  SignInViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 02/04/1443 AH.
//

import UIKit
import Parse

class SignInViewController: UIViewController {
    @IBOutlet weak var txtUsernameSignin: UITextField!
    @IBOutlet weak var txtPasswordSignin: UITextField!
    
    
    @IBOutlet weak var SignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SignInAction(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: self.txtUsernameSignin.text!, password: self.txtPasswordSignin.text!) {
                  (user: PFUser?, error: Error?) -> Void in
                  if user != nil {
                    self.displayAlert(withTitle: "Login Successful", message: "")
                  } else {
                    self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
                  }
        }
    }
    @IBAction func signUpBottonAction(_ sender: Any) {
    }
    
    @IBAction func signup(_ sender: Any) {
//        let user = PFUser()
//        user.username = self.txtUsernameSignup.text
//        user.password = self.txtPasswordSignup.text
//
//        self.indicatorSignup.startAnimating()
//        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
//            self.indicatorSignup.stopAnimating()
//            if let error = error {
//                self.displayAlert(withTitle: "Error", message: error.localizedDescription)
//            } else {
//                self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
//            }
//        }
    }
    
    @IBAction func logout(_ sender: Any) {
           PFUser.logOut()
       }
       
       func displayAlert(withTitle title: String, message: String) {
           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
           let okAction = UIAlertAction(title: "Ok", style: .default)
           alert.addAction(okAction)
           self.present(alert, animated: true)
       }
       
   }

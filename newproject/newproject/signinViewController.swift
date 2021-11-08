//
//  signinViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 01/04/1443 AH.
//

import UIKit


class signinViewController: UIViewController  {
    
    @IBAction func userName(_ sender: UITextField) {
    }
    @IBAction func passwordText(_ sender: UITextField) {
    }
    @IBAction func signIn(_ sender: UIActivityIndicatorView) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signin(_ sender: Any) {
       var PFUser = String()
    
        PFU
             if user != nil {
               self.displayAlert(withTitle: "Login Successful", message: "")
             } else {
               self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
             }
           }
       }
    
}
  

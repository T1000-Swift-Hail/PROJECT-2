//
//  SingInViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 08/04/1443 AH.
//

import UIKit

class SingInViewController: UIViewController {
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var password: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

   
    @IBAction func signIn(_ sender: Any) {
   
        if emailAddress.text?.isEmpty ?? true || password.text?.isEmpty ?? true {
            let alert = UIAlertController(title: "please full in Email", message: "your email is missing", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
            self.present(alert, animated : true)
        }
        else {
    
    let alert = UIAlertController(title: "Welcome To Store", message: "Complete Registration", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
    self.present(alert, animated : true)
        }

    }
      
    }
    



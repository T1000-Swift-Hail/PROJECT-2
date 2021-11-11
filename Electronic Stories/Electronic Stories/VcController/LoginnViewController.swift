//
//  LoginnViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class LoginnViewController: UIViewController {

    @IBOutlet weak var emilTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
    }
    
    
    
    @IBAction func btnRegistration(_ sender: UIButton) {
        
        if emilTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
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


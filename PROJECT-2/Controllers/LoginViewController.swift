//
//  loginViewController.swift
//  PROJECT-2
//
//  Created by HIND12 on 03/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
 let customer = Customer(name: "Hind", age: 20, service: [Service(name: "training", description: "muscle strengthening", price: 140)], password: "987Hh")
   
  // The customer writes the user name and password and enters it on the application
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 
    @IBAction func signin(_ sender: UIButton) {
        
        if (username.text == customer.name) && (password.text == customer.password) {
            
            performSegue(withIdentifier: "home", sender: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Error", message: "wrong username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .cancel))
            present(alert, animated: true)
            
        }
        
    }

}

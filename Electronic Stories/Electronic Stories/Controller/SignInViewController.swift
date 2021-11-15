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
   
//        showAlertView()
        
        
        if emailAddress.text?.isEmpty ?? true || password.text?.isEmpty ?? true {
            let alert = UIAlertController(title: "please Enter Email".localized, message: "your email is missing".localized, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK".localized, style: .default , handler: nil))
            self.present(alert, animated : true)
        }
        else {

            let alert = UIAlertController(title: "Welcome To Store".localized, message: "Complete Registration".localized, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK".localized, style: .default , handler: nil))
    self.present(alert, animated : true)
        }
    
    }
//    func showAlertView () {
//        let alert = UIAlertController (title: "title", message: "my alert messing", preferredStyle: .alert)
//        alert .addAction(UIAlertAction(title: "Sign In", style: .default, handler: {action in
//            print ("action 1 click")
//
//        }))
//        alert.addAction(UIAlertAction(title: "Cancle", style: .cancel, handler: nil))
//        present (alert , animated: true , completion: nil)
//    }
    }
    



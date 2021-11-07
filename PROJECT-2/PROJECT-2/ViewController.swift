//
//  ViewController.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var LoginAction: UIButton!
    
    let customer = Customer(userName: "Ahmed", userPassword: 49, FirstName: "Ahmed", LastName: "Ali", address: "Riyadh")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func displayAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
            self.performSegue(withIdentifier: "homeScreen", sender: nil)
        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    func UserLogin () {
        // gaurd to check for user is enterned or ematy
        guard let username = username.text else { return }
        if customer.userName == username{
            displayAlert(withTitle: "login successful", message: "")
        } else {
            displayAlert(withTitle: "fail", message: "")
        }
        
    }
    @IBAction func loginActionBotton(_ sender: Any) {
        UserLogin()
    }
}

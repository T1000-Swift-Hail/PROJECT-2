//
//  ViewController.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import UIKit

class LoginViewController:
    UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var loginAction: UIButton!
    
    let customer = Customer(userName: "q", userPassword: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // displayng alert with massage to user for login
    func DisplayAlert(withTitle title: String, message: String,isLogin: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title:NSLocalizedString("Ok", comment: ""), style: .default, handler: { action in
            if isLogin {
                self.performSegue(withIdentifier: "homeScreen", sender: nil)
            } else {
                
            }
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    func UserLogin () {
        
        // gaurd to check for user is enterned or ematy
        guard let userName = userName.text else { return }
        guard let userPassowrd = Int(userPassword.text ?? "0") else { return }
        
        if customer.userName == userName && customer.userPassword == userPassowrd  {
            DisplayAlert(withTitle: NSLocalizedString("login successful", comment: ""), message: "", isLogin: true)
        } else {
            DisplayAlert(withTitle: NSLocalizedString("fail", comment: ""), message: NSLocalizedString("Please Try Again!", comment: ""), isLogin: false)
        }
    }
    // log in action 
    @IBAction func loginActionBotton(_ sender: Any) {
        
        UserLogin()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
}

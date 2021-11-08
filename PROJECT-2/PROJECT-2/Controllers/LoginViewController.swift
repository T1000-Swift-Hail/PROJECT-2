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
    //background.color =.lighterColor
    
    let customer = Customer(userName: "Abdoalaziz1", userPassword: 1413)
    let customer2 = Customer(userName: "Fahad4", userPassword: 4433)

//    let allCustomer:Customer = [customer,customer2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func DisplayAlert(withTitle title: String, message: String,isLogin: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
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
            DisplayAlert(withTitle: "login successful", message: "", isLogin: true)
        } else {
            DisplayAlert(withTitle: "fail", message: "", isLogin: false)
        }
        
    }
    @IBAction func loginActionBotton(_ sender: Any) {
        UserLogin()
    }
    
}

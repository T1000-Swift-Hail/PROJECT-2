//
//  LoginViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 03/04/1443 AH.
//

import UIKit
class user {
    var name:String = ""
    var age:Int = 0
    var userPassword:Int = 0
    
    init(name:String, age:Int, userPassword:Int){
        self.name = name
        self.age = age
        self.userPassword = userPassword
    }
}

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signIn: UIButton!
    
    
    var userAm = user(name: "mohammed", age: 26, userPassword: 10730)
    var userRm = user(name: "raed",age: 30, userPassword: 21209)
    var userFm = user(name: "faisal", age: 18, userPassword: 48901)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    
    @IBAction func signInAction(_ sender: UIButton) {
        guard let userName = userName.text else {return}
        guard let userPassword = Int(password.text ?? "0")else {return}
        if userAm.name == userName && userAm.userPassword == userPassword {
            //displayAlert(withTitle: "Done", message: "", isLogin: true)
            performSegue(withIdentifier: "homePage", sender: nil)
        }else{
            displayAlert(withTitle: "The username or password is incorrect", message: "", isLogin: false)
        }
        
    }
    
    
    
    func displayAlert(withTitle title:String, message:String, isLogin:Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Fine", style: .default, handler: {
            action in if isLogin {
                self.performSegue(withIdentifier: "homeScreen", sender: nil)
            }else{
                
            }
        })
        alert.addAction(okAction)
        self.present(alert,animated: true)
    }
    func userLogin() {
        
        
        guard let userName = userName.text else {return}
        guard let userPassword = Int(password.text ?? "0")else {return}
        if userAm.name == userName && userAm.userPassword == userPassword {
            displayAlert(withTitle: "Done", message: "", isLogin: true)
        }else{
            displayAlert(withTitle: "fail", message: "", isLogin: false)
        }
    }
    
}




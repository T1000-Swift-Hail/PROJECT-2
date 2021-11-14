//
//  SignInViewController.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import UIKit

class User {
    
    var name:String = ""
    var phoneNumber:Int = 0
    var age:Int=0
    var userPassword:Int = 0
    //
    //    var shoppingCart : [Product] = []?
    //    var ShoppingCartR : [Product] = [Sungls4]
    
    init(name:String, phoneNumber:Int, age:Int, userPassword:Int){
        self.name = name
        self.phoneNumber = phoneNumber
        self.age = age
        self.userPassword = userPassword
    }
    
}


class SignInViewController: UIViewController {
    
    @IBOutlet weak var userSign: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var userLogin: UIButton!
    
    var userAz = User(name: "Abdulaziz", phoneNumber: 0533333333, age: 22, userPassword: 12345)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userPassword.isSecureTextEntry = true
        
        // Do any additional setup after loading the view.
    }
    
    func displayAlert(withTitle title:String, message: String,isLogin:Bool) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: {
            action in if isLogin {
                
                self.performSegue(withIdentifier: "HomePage", sender: nil)
            } else {
                
                
            }
            
        })
        
        alert.addAction(okAction)
        self.present(alert,animated: true)
    }
    
    
    func usersLogin() {
        
        guard let UserSign = userSign.text else {return}
        guard let userPass = Int(userPassword.text ?? "0") else {return}
        if userAz.name == UserSign && userAz.userPassword == userPass {
            
            displayAlert(withTitle: "Login Successful", message: "", isLogin: true)
        } else {
            
            displayAlert(withTitle: "User Name Or Password is incorrect", message: "", isLogin: false)
            
        }
        
        
        
    }
    
    
    @IBAction func loginActionButton(_ sender: Any) {
        
        usersLogin()
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//
//  LoginAndRegisterViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 03/04/1443 AH.
//
import UIKit

struct Users {
    
    var email : String = ""
    var password : String = ""
    init( email :String, password : String){
        self.email = email
        self.password = password
        
    }
}
class LoginAndRegisterViewController: UIViewController {
    
    @IBOutlet weak var txtUsernameSignin: UITextField!
    
    @IBOutlet weak var txtPasswordSignin: UITextField!
    
    @IBOutlet weak var indicatorLogin: UIActivityIndicatorView!
    
    var users = Users(email: "ahmed@ahmed.com", password: "1234")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func signin() {
        
        let txtUsernameSignin = txtUsernameSignin.text
        let txtPasswordSignin = txtPasswordSignin.text
        
        if users.email ==  txtUsernameSignin && users.password == txtPasswordSignin {
            
                displayAlert(withTitle: "Login Successful", message:"",isLogin: true)
                
        }else{
                
                displayAlert(withTitle: "erore", message: "",isLogin: false)
                
            }
        
    }
    func displayAlert(withTitle title: String, message: String,isLogin:Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style:.default, handler: {
            action in if isLogin {
                self.performSegue(withIdentifier: "Home", sender: nil)
            }else{
                
            }
            
        })
        alert.addAction(okAction)
        self.present(alert,animated: true)
        
    }
}

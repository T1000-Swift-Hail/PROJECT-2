//
//  LoginAndRegisterViewController.swift
//  newproject
//
//  Created by Ahmed Alenazi on 03/04/1443 AH.
//
import UIKit



struct User {
    var userEmail = String()
    var userPassword = Int()
    
    
}




class LoginAndRegisterViewController:
    UIViewController {
    
    
    @IBOutlet weak var usserEmail: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signInBotton: UIButton!
    
    
    
    
    @IBOutlet weak var signUPEmail: UITextField!
    
    @IBOutlet weak var signUpPassword: UITextField!
    
    @IBOutlet weak var signup: UIButton!
    
    
    
    // creat users
    let user = User(userEmail: "ahmed@ahmed.com", userPassword:12345)
    let user2 = User(userEmail: "Fahad@Fahad.com", userPassword:12345)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // disply alarts and maseges
    func DisplayAlert(withTitle title: String, message: String,isLogin: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
            if isLogin {
                self.performSegue(withIdentifier: "Home", sender: nil)
            } else {
                
            }
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    
    
    
    func UserLogin () {
        //checking for condions
        guard let userName = usserEmail.text else { return }
        guard let userPassowrd = Int(password.text ?? "0") else { return }
        
        if user.userEmail == userName && user.userPassword == userPassowrd  {
            DisplayAlert(withTitle: "login successful", message: "", isLogin: true)
        } else {
            DisplayAlert(withTitle: "fail", message: "Please Try Again!", isLogin: false)
        }
    }
    
    
    @IBAction func loginActionBotton(_ sender: Any) {
        
        UserLogin()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    @IBAction func Signup(_ sender: Any) {
        
        let SignUPEmail = signUPEmail.text
        let SignUpPassword = signUpPassword.text
        
        if SignUPEmail != nil && SignUpPassword != nil {
            
            
            
            DisplayAlert(withTitle: "sign up succesful", message:"",isLogin: true)
            
        }else{
            
            DisplayAlert(withTitle: "Try again", message: "",isLogin: false)
            
        }
        
        
        
        
    }
}


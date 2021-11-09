//
//  LoginPage.swift
//  Metalic
//
//  Created by Anas Hamad on 02/04/1443 AH.
//

import UIKit





class LoginPage: UIViewController {
    
    
    struct Users{
        
        var userNames :String
        var passWords : String
       
    }
    
    @IBOutlet var loginicon: UIImageView!
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var passWodText: UITextField!
    
    let defaults = UserDefaults.standard
   
   
    var users  = [Users(userNames: "Anas", passWords: "123123")
                  ,Users(userNames: "Fahad", passWords: "123")
                  ,Users(userNames: "Khaled", passWords: "887788")
                  ,Users(userNames: "Majed", passWords: "576576")]
    
    
    
    @IBOutlet var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if defaults.bool(forKey: "in Login") {
            performSegue(withIdentifier:"TabBarHome" , sender: nil)
        }
        loginicon.layer.cornerRadius = 12
        loginButton.layer.cornerRadius = 12
    
    
//        passWodText!.isSecureTextEntry = true


    }
    
    
    
   
        // Do any additional setup after loading the view.
   
    
    @IBAction func logIn(_ sender: Any) {
        
        
        var savedUser = Users(userNames: "", passWords: "")
        
        if let setUserName = defaults.string(forKey: "userName"){
            savedUser.userNames = setUserName
        }
        if let setPassword = defaults.string(forKey: "PassWord") {
            savedUser.passWords = setPassword
            
        }
        
        users.append(savedUser)
        print("users.....")
        print(savedUser)
        print(users)
        
        let userProfile = users
        guard let user = usernameText.text else {return}
        
        guard let pass = passWodText.text else {return}
        
        defaults.set(true, forKey: "in Login")
        
        for myUsers in userProfile {
            if user == myUsers.userNames && pass == myUsers.passWords {
                performSegue(withIdentifier: "TabBarHome", sender: nil)
                return
            }else if (usernameText.text!.isEmpty || passWodText.text!.isEmpty){
            DisplayMyAlert(title: "Wrong", message: "UserName or Password is empity")
        
   
            
            }
            
    }
    }
    
    @IBAction func joinUsButton(_ sender: Any) {
        performSegue(withIdentifier: "Registration", sender: nil)
        
    }
    @IBAction func skipButton(_ sender: Any) {
        
        performSegue(withIdentifier: "TabBarHome", sender: nil)
    }
    
    
    
    
    
    func DisplayMyAlert(title: String, message: String){
        
     let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
    let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(Ok)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
}

    
//       @IBAction func logout(_ sender: Any) {
//           PFUser.logOut()
//       }
//
//       func displayAlert(withTitle title: String, message: String) {
//           let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//           let okAction = UIAlertAction(title: "Ok", style: .default)
//           alert.addAction(okAction)
//           self.present(alert, animated: true)
//       }
//
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



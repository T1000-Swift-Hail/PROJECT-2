//
//  LoginViewController.swift
//  Home Services
//
//  Created by Munira abdullah on 04/04/1443 AH.
//

import UIKit

  // class of login in user

class LoginViewController: UIViewController {

   
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    //Exampel of user
   
    let user = User(username: "munira", address: "Hail", passward: 1234)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
 
    // Button of login to going in App
    
    @IBAction func singin(_ sender: UIButton) {
        
        // This section is for username and password put to transition in login buttom to application
        
        let inputPassword = Int(password.text ?? "0") ?? 0
        if (username.text == user.username) && (inputPassword == user.passward) {
           
            performSegue(withIdentifier: "profile", sender: nil)

        } else {
            
           // Here if the user dont but username and password
            
            
            let alert = UIAlertController(title: "Error", message: "wrong username or password or address", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
            
            present(alert, animated: true)

        }
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


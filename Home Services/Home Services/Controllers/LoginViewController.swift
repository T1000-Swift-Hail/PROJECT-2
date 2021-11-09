//
//  LoginViewController.swift
//  Home Services
//
//  Created by Munira abdullah on 04/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {

   
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    
   
    let user = User(username: "munira", address: "Hail", passward: 0000)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func singin(_ sender: UIButton) {
        
        if (username.text == user.username) && (address.text == user.address) {
           
            performSegue(withIdentifier: "profile", sender: nil)

        } else {
            
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


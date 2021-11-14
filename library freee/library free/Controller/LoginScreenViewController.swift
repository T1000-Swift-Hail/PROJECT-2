//
//  UIViewControllerLoginScreen.swift
//  library free
//
//  Created by موضي الحربي on 03/04/1443 AH.
//

import UIKit

class LoginScreenViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    let user = User(email: "modhi", password:1111)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: Any) {
     
        let inputPassword = Int(password.text ?? "0") ?? 0
        if (email.text == user.email) && (inputPassword == user.password){
            
        
        performSegue(withIdentifier: "mainScreen", sender: nil)
     
        } else {
            let alret = UIAlertController(title: "Error", message: "wrong email or password", preferredStyle: .alert)
            alret.addAction(UIAlertAction(title: "ok", style: .cancel))
        present(alret, animated: true)
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

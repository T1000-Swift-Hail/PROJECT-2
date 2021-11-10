//
//  ViewController.swift
//  SeccondProject
//
//  Created by iAbdullah17 on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
   let userDefaults = UserDefaults.standard

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!

    var user1 = UserName(userName: "iAbdullah", password: "4444")
    var user2 = UserName(userName: "Mj37", password: "575667")
    var user3 = UserName(userName: "iSalem", password: "8668585")
    var user4 = UserName(userName: "ans.1", password: "3837664")
    var user5 = UserName(userName: "ioxz", password: "93977347")
    var user6 = UserName(userName: "iq8", password: "984998208")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPassword.isSecureTextEntry = true
        if userDefaults.bool(forKey: "Stay logged in") {
            performSegue(withIdentifier: "Seccond", sender: nil)
        }
        
        // Do any additional setup after loading the view.
    }
        


    @IBAction func logIn(_ sender: Any) {
        let regist = [user1,user2,user3,user4,user5,user6]
        guard let userName = userName.text else { return }
        guard let userPass = userPassword.text else { return }
        userDefaults.set(true, forKey: "Stay logged in")
        for registerdUser in regist {
            if registerdUser.userName == userName && registerdUser.password == userPass {
                performSegue(withIdentifier: "Seccond", sender: nil)
                return
            }
            else {
                alerts()
            
            }
        }
        func alerts() {
            let wrong = UIAlertController(title: "Pass or User is Wrong".translated, message: "", preferredStyle: .alert)
        
            let ok = UIAlertAction(title: "Try Again".translated, style: .default) { action in
            print("Ok")
            
            
        }
            wrong.addAction(ok)
            present(wrong, animated: false)
        
    }
    
    }
  

    
}
extension String {
    var translated : String {
        return NSLocalizedString(self, comment: "")
    }
}

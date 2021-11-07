//
//  ViewController.swift
//  SeccondProject
//
//  Created by iAbdullah17 on 02/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

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
        
        // Do any additional setup after loading the view.
    }
        


    @IBAction func logIn(_ sender: Any) {
        let regest = [user1,user2,user3,user4,user5,user6]
        guard let user = userName.text else { return }
        guard let pass = userPassword.text else { return }
        
        for users in regest {
            if user == userName.text && pass == userPassword.text {
                performSegue(withIdentifier: "Seccond", sender: nil)
            }
            else {
            return
            }
        }
       
        
        
    }
    
    }



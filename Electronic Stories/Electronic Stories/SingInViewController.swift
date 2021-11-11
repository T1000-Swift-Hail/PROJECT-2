//
//  LoginViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit
import QuartzCore
class SingInViewController: UIViewController {
//

    
    
    
//    let constant = Constants()
   @IBOutlet weak var emailAdress: UITextField!

    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var signLable: UIButton!
   
    private var idx: Int = 0
      
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        emailAdress.alpha = 0;
            password.alpha = 0;
        signLable.alpha   = 0;
 
                self.emailAdress.alpha = 1.0
                self.password.alpha = 1.0
                self.signLable.alpha   = 0.9
     
               
            }
    func loginButton(enabled: Bool) -> () {
           func enable(){
              
                  
           }
    }
}

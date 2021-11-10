//
//  LoginViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class SingInViewController: UIViewController {
//
//    let constant = Constants()
    
    
    
//    let constant = Constants()
   @IBOutlet weak var emailAdress: UITextField!

    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var signLable: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    configureGestures()
            setupUI()
            
        }
        
        
        
    }


    extension SingInViewController {
        
        func setupUI(){
            emailAdress.layer.cornerRadius = emailAdress.frame.height / 2
            password.layer.cornerRadius = password.frame.height / 2
        }
        
    
    
        func configureGestures(){
                let signInlabelTap = UITapGestureRecognizer(target: self, action: #selector(signInlabelTapped))
                
            signLable.addGestureRecognizer(signInlabelTap)
            signLable.isUserInteractionEnabled = true
            }
            
            @objc func signInlabelTapped(){
                
                
//                let signinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier:constant.signinID) as! SingInViewController
                
//                self.present(signinVC, animated: true, completion: nil)
                
                
            }
            
            
        }
    
    
////    configureGestures()
////            setupUI()
//}
//
//extension SingInViewController {
//
//    func setupUI(){
//
//        emailAdress.layer.cornerRadius = emailAdress.frame.height
//        password.layer.cornerRadius = password.frame.height
//        signLable.layer.cornerRadius = signLable.frame.height
//    }
//
//    // configure gesture recognizers
//    func configureGestures(){
//        let signInlabelTap = UITapGestureRecognizer(target: self, action: #selector(signInlabelTapped))
//
//        signLable.addGestureRecognizer(signInlabelTap)
//        signLable.isUserInteractionEnabled = true
//    }
//
//    @objc func signInlabelTapped(){
//
//
//        let signinVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: constant.signinID) as! SingInViewController
//
//        self.present(signinVC, animated: true, completion: nil)
//    }
//}
//
//

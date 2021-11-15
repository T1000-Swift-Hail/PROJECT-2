//
//  FirstViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 06/04/1443 AH.
//

import UIKit

enum Suges:String {
    
    case CreateAccount = "CreateAccount"
   case IdentitfirerLogin  = "IdentitfirerLogin"
    case IdentitfirerSkip = "IdentitfirerSkip"
}

class FirstViewController: UIViewController {
    
    //login
    
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var pasword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnCreateAccount(_ sender: Any) {
    performSegue(withIdentifier: Suges.CreateAccount.rawValue, sender: nil)
    }
    
    @IBAction func btnLogin(_ sender: Any) {

            if emailAddress.text?.isEmpty ?? true || pasword.text?.isEmpty ?? true{
                let alert = UIAlertController (title : "login in Incorrect".localized , message:"",preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "OK".localized ,style: .default, handler: nil))
                self.present(alert, animated: true)
            }else{
            }
        performSegue(withIdentifier: Suges.IdentitfirerLogin.rawValue, sender: nil)
        
        }
    
    @IBAction func btnSkip(_ sender: Any) {
        performSegue(withIdentifier: "IdentitfirerLogin", sender: nil)
    }

}


extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
   


    
    


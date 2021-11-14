//
//  ViewController.swift
//  project2
//
//  Created by Mastorah on 07/11/2021.
//

import UIKit

class ViewController: UIViewController {
  
    let customer1 = Customer(username :"mohamed", password: "098765" )

    override func viewDidLoad() {
        super.viewDidLoad()
    }
     
    @IBOutlet weak var txtusername:
    UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func signUP(_ sender: Any) {
        performSegue(withIdentifier: "signUP", sender: nil)
    }
    
    @IBAction func btnlogin(_ sender: UIButton) {
        performSegue(withIdentifier: "loginIdent", sender: nil)
        
        if (txtusername.text == customer1.username) && (password.text == customer1.password) {
            performSegue(withIdentifier: "home", sender: nil)
        } else {
            let alert = UIAlertController(title: "Error".localaized, message: "wrong username or password".localaized, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok".localaized, style: .cancel ))
        present(alert, animated: true)
        }
    }

    @IBAction func signUPButton(_ sender: UIButton) {
       performSegue(withIdentifier: "signUpp", sender: nil)
    }
}

extension String {
    var localaized :String {
    return NSLocalizedString(self, comment: "")
        
    }
}

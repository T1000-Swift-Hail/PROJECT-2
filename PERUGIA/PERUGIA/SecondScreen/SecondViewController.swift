//
//  SecondViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 06/04/1443 AH.
//

import UIKit
enum SugesSecond:String {
    
    case SecondCreateAccount = "SecondCreateAccount"

}
class SecondViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var mobailNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func btnCreateNewAccount(_ sender: Any) {
        
        if name.text?.isEmpty ?? true || email.text?.isEmpty ?? true || password.text?.isEmpty ?? true || mobailNumber.text?.isEmpty ?? true {
            
        let alert = UIAlertController (title: "", message: "Setup failed", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
        } else{
    }
        performSegue(withIdentifier: SugesSecond.SecondCreateAccount.rawValue, sender: nil)
        

    }
    

}


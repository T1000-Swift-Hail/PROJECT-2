//
//  LoginVC.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 03/04/1443 AH.
//

import Foundation
import UIKit
class LoginVC :UIViewController{
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    
   
    
    let customer1 = User(email: "seham1413@hotmail.com", phone: 0501789655, name: "seham", thenumber: 297, price: 150, shoppingCart: [], passWord: "56ss", age: 29)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        if (userName.text ?? "" == customer1.name)&&(passWord.text ?? "" == customer1.passWord){
performSegue(withIdentifier: "mainScreen", sender: nil)
        }else{
            let alert = UIAlertController(title: "Error", message: "wrong Entertheusername or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .cancel))
            present(alert, animated: true)
        }
    }
    
   
}

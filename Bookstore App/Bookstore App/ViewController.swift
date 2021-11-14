//
//  ViewController.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 07/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNames: UITextField!
    @IBOutlet weak var PasswordUser: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    // Users for Example
    var Name1 = User(FirstName: "Khaled22", Password: "123456")
    var Name2 = User(FirstName: "Abdullah34", Password: "123456")
    var Name3 = User(FirstName: "Saad12", Password: "123456")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // When we change the font and zise of "Login"
        titleLabel.text = "Login"
        .localize
        titleLabel.font = UIFont(name: "Amiri-Bold", size: 30)
        
        
    }
    
// Action of login
    @IBAction func logIn(_ sender: Any) {
        let NewNames = [Name1 , Name2 , Name3 ]
        guard let AcountUser = UserNames.text else {return}
        guard let AcountPassword = PasswordUser.text else {return}
        for RegisterdUser in NewNames {
            if RegisterdUser.FirstName == AcountUser &&
                RegisterdUser.Password == AcountPassword {
                performSegue(withIdentifier: "Second", sender: nil)
                return
            }
            else {
                Messages()
                
                
            }
        }
  }
    // Massage of user  if he not sign up
    func Messages() {
        let message1 = UIAlertController(title: "Your Username And Password not corect".localize, message: "", preferredStyle: .alert)
        let done = UIAlertAction(title: "try Again".localize, style: .default) { action in
            
            print("OK")
        }
        message1.addAction(done)
        present(message1, animated: true)
    }
    
}


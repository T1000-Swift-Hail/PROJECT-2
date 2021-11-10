//
//  LoginnViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class LoginnViewController: UIViewController {

    @IBOutlet weak var emilTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
    }
    
    
    
    @IBAction func btnRegistration(_ sender: UIButton) {
        
        if emilTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            let alert = UIAlertController(title: "please full in Email", message: "your email is missing", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
            self.present(alert, animated : true)
        }
        else {
    
    let alert = UIAlertController(title: "Welcome To Store", message: "Complete Registration", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
    self.present(alert, animated : true)
        }
    
    }
}
//    let imageChecked = UIImage(named: "checked") as UIImage?
//        let imageNotChecked = UIImage(named: "not checked") as UIImage?
//
//    @IBOutlet weak var firstName: UITextField!
//    @IBOutlet weak var lastName: UITextField!
//    @IBOutlet weak var emilAddress: UITextField!
//    @IBOutlet weak var password: UITextField!
//    @IBOutlet weak var phoneNumber: UITextField!

//    var isRemeberMeCheck = false
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        firstName.addTarget(nil, action:Selector(("firstResponderAction:")), for:.editingDidEndOnExit)
//        lastName.addTarget(nil, action:Selector(("firstResponderAction:")), for:.editingDidEndOnExit)
//        password.addTarget(nil, action:Selector(("firstResponderAction:")), for:.editingDidEndOnExit)
//        emilAddress.addTarget(nil, action:Selector(("firstResponderAction:")), for:.editingDidEndOnExit)
//        phoneNumber.addTarget(nil, action:Selector(("firstResponderAction:")), for:.editingDidEndOnExit)
//
//    }
//
//
//    @IBAction func Registration(_ sender: Any) {
//
//        guard firstName.text != "" else {
//
//                    print("Name text field should not be empty")
//            firstName.backgroundColor = .red
//            firstName.placeholder = "firstName | required"
//                    return
//                }
//
//        guard lastName.text != "" else {
//
//                    print("Email text field should not be empty")
//                    lastName.backgroundColor = .red
//                    lastName.placeholder = "Email | required"
//                    return
//                }
//
//        guard password.text != "" else {
//
//                   print("Password text field should not be empty")
//                   password.backgroundColor = .red
//                   password.placeholder = "Password | required"
//                   return
//               }
//
//        guard phoneNumber.text != "" else {
//
//                 print("Phone Number text field should not be empty")
//                 phoneNumber.backgroundColor = .red
//                 phoneNumber.placeholder = "Phone Number | required"
//                 return
//             }

      
//    }
    



//
//  SignUpViewController.swift
//  saudi elctri city company
//
//  Created by Mohammed Abdullah on 03/04/1443 AH.
//

import UIKit
class signUp {

    struct SignUp{

     var firstName:String = ""
     var lastName:String = ""
     var userName :String = ""
     var mail:String = ""
     var phoneNumber:Int = 0
     var password:Int = 0


     init(firstName:String, lastName:String, mail:String, phoneNumber:Int, password:Int, confirmPassword:Int){

         self.firstName = firstName
         self.lastName = lastName
         self.mail = mail
         self.phoneNumber = phoneNumber
         self.password = password
 
     }
    }

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
   
    var userAm = user(name: "mohammed", age: 26, userPassword: 10730)
    var userRm = user(name: "raed",age: 30, userPassword: 21209)
    var userFm = user(name: "faisal", age: 18, userPassword: 48901)



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
}

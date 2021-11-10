//
//  SignUpViewController.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 04/04/1443 AH.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var passwordUser: UITextField!
    @IBOutlet weak var repeatPasswordUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//   @IBAction func registerButton(_ sender: Any) {
//       let userEmail1 = userEmail.text
//      let userPassword1 = passwordUser.text
//      let repeatPasswordUser1 = repeatPasswordUser.text

//      if (userEmail1?.isEmpty || userPassword1?.isEmpty || repeatPasswordUser1.isEmpty)
//        {
//           displyMyAlertMessage("All fields are required!")
//           return
//      }
//       if (userPassword1 != repeatPasswordUser1)
//     {
//          displyMyAlertMessage("Passwords do not match!")
//           return
//      }
//    }
//   func displyMyAlertMessage(userMessage : String){
//        var myAlert = UIAlertController(title: "Alert", message:userMessage, preferredStyle: .alert)
//       let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
//       myAlert.addAction(okAction)
//       self.presentationController(myAlert , animated : true , completion : nil)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

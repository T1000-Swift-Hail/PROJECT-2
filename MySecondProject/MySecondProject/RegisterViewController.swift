//
//  RegisterViewController.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var UserEmailTextField: UITextField!
    @IBOutlet weak var UserPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func regesterButtonTapped(_ sender: Any) {
        
        let user = PFUser()
                user.username = self.UserEmailTextField.text
                user.password = self.UserPasswordTextField.text
                
                self.repeatPasswordTextField.startAnimating()
                user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
                    self.indicatorSignup.stopAnimating()
                    if let error = error {
                        self.displayAlert(withTitle: "Error", message: error.localizedDescription)
                    } else {
                        self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
                    }
                }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

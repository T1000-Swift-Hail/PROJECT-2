//
//  SginUpViewController.swift
//  PROJECT-2
//
//  Created by Mac on 08/11/2021.
//

import UIKit

class SginUpViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var middleName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var signUp: UIButton!
    
    let customer = Customer(userName: "Sultan", userPassword: 123)
    let customer2 = Customer(userName: "Turki", userPassword: 9900)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func DisplayAlert(withTitle title: String, message: String,isSginup: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
            if isSginup {
                self.performSegue(withIdentifier: "homeScreen", sender: nil)
            } else {
                
            }

        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    
    
    
    func UserLogin () {
        // gaurd to check for user is enterned or ematy
        guard let userName = userName.text else { return }
        guard let userPassowrd = Int(userPassword.text ?? "0") else { return }
        
        if customer.userName == userName && customer.userPassword == userPassowrd  {
            DisplayAlert(withTitle: "login successful", message: "", isSginup: true)
        } else {
            DisplayAlert(withTitle: "fail", message: "", isSginup: false)
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
}

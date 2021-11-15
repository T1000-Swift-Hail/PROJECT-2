//
//  HomeViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    
    @IBOutlet weak var yorNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passSignOutText: UITextField!
    
    let costmer = [String]()
    var iconClick = true

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
// log in Action if the nameText & passText empty will generate alert & not Allowing user to go to Home page
    @IBAction func loginBtn(_ sender: Any) {
        
        if nameText.text?.isEmpty ?? true || passText.text?.isEmpty ?? true {
            let alert = UIAlertController(title: "You have to Log In first".locatized, message: "", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Cancel".locatized, style: .default, handler: nil))
            
            self.present(alert, animated: true)
            
        } else{
        print(" ")
        }
        performSegue(withIdentifier: "HomeBtn", sender: nil)
}
    
    // sign up Action if the nameText & passText empty will generate alert & not Allowing user to go to Home page
    @IBAction func btnSignOut(_ sender: Any) {
        if yorNameText.text?.isEmpty ?? true ||  emailText.text?.isEmpty ?? true && passSignOutText.text?.isEmpty ?? true{
            let alert = UIAlertController(title: "You have to Sign up First".locatized, message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel".locatized, style: .default, handler: nil))
            self.present(alert, animated: true)

        } else{
        print(" ")
        }
        performSegue(withIdentifier: "HomeBtnSignOut", sender: nil)
        
    }

}
 // extension string to locatized from english to arabic
extension String {
        var locatized: String{
            return NSLocalizedString(self, comment: "")
        }
        
    }
   


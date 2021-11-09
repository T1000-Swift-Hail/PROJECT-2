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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
        if nameText.text?.isEmpty ?? true{
            let alert = UIAlertController(title: "You have to Log In first", message: "", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        } else{
        print("hjhkkh")
            
        }
}
    
    
    @IBAction func btnSignOut(_ sender: Any) {
        if yorNameText.text?.isEmpty ?? true{
            let alert = UIAlertController(title: "You have to Sign in First", message: "", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        } else{
        print("hjhkkh")
            
        }
}
}

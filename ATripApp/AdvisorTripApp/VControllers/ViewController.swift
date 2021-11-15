//
//  ViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/8/21.
//

import UIKit

class ViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    // performSegue to log in & sign up pages
    @IBAction func LogInBtn(_ sender: Any) {
        performSegue(withIdentifier: "BtnLogIn", sender: nil)
    }
    
    @IBAction func signoutBtn(_ sender: Any) {
        performSegue(withIdentifier: "BtnSignOut", sender: nil)
    }
    
}

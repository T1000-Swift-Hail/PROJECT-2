//
//  HomeRegViewController.swift
//  TripApp
//
//  Created by Hind Alharbi on 11/8/21.
//

import UIKit

class HomeRegViewController: UIViewController {

    @IBOutlet weak var buttLogIn: UIButton!
    @IBOutlet weak var buttSignOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting style for Sign In botton
        buttLogIn.layer.cornerRadius = buttLogIn.frame.height/2
        buttLogIn.clipsToBounds = true
        buttLogIn.layer.borderWidth = 1
        
        // setting style for Sign Out botton
        buttSignOut.layer.cornerRadius = buttSignOut.frame.height/2
       buttSignOut.clipsToBounds = true
        buttSignOut.layer.borderWidth = 1
        
    }
}

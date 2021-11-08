//
//  HomePageViewController.swift
//  TripApp
//
//  Created by Hind Alharbi on 11/8/21.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var btnSign: UIButton!
    
    @IBOutlet weak var btnSignOut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting style for Sign In botton
        btnSign.layer.cornerRadius = btnSign.frame.height/2
        btnSign.clipsToBounds = true
        btnSign.layer.borderWidth = 1
        //btnSign.layer.borderColor = color
        // setting style for Sign Out botton
        btnSignOut.layer.cornerRadius = btnSignOut.frame.height/2
        btnSignOut.clipsToBounds = true
        btnSignOut.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }


    @IBAction func onClickSignIn(_ sender: Any) {
        
    }
    
    @IBAction func onClickSignUp(_ sender: Any) {
        
    }
}

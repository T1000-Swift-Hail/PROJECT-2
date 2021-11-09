//
//  SearchViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func romaClick(_ sender: Any) {
        let alert = UIAlertController(title: "You Have Successfully Logged in to TripApp", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func parisClick(_ sender: Any) {
        let alert = UIAlertController(title: "You Have Successfully Logged in to TripApp", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
    }
}

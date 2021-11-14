//
//  SeccondViewController.swift
//  SeccondProject
//
//  Created by iAbdullah17 on 03/04/1443 AH.
//

import UIKit

class SeccondViewController: UIViewController {
    let userDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOut(_ sender: UIButton) {
        print("loggin out")
        userDefaults.set(false, forKey: "Stay logged in")
    
        performSegue(withIdentifier: "Logout", sender: nil)
    }
    @IBAction func clickToGo(_ sender: Any) {
        performSegue(withIdentifier: "Tickets", sender: nil)
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

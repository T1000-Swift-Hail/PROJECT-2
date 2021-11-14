//
//  LogOut.swift
//  Metalic
//
//  Created by Anas Hamad on 08/04/1443 AH.
//

import UIKit

class LogOut: UIViewController {
    
    @IBOutlet var nameProfile: UILabel!
    @IBOutlet var companyName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameProfile.text = UserDefaults.standard.string(forKey: "userName")
        companyName.text = UserDefaults.standard.string(forKey: "companyName")

    }
    @IBAction func logOutBottun(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "in Login")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
    
  

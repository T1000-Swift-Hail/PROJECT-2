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
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoguotBottun(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "in Login")
        self.navigationController?.popToRootViewController(animated: true)
        
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

//
//  ProfileViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 06/04/1443 AH.
//

import UIKit


class ProfileViewController:UIViewController {

    @IBOutlet var showID: UILabel!
    
    @IBOutlet var showName: UILabel!
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("1:\(userDefault.string(forKey: "id"))")
        let id = userDefault.string(forKey: "id")
        showID.text = id
        let name = userDefault.string(forKey: "name")
        showName.text = name
    }
    
    @IBAction func logOutButton(_ sender: UIButton) {
        
        userDefault.set(false, forKey: "isLogIn")
        userDefault.set("", forKey: "id")
        userDefault.set("", forKey: "name")
        userDefault.synchronize()
        performSegue(withIdentifier: "LogOut", sender: nil)
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

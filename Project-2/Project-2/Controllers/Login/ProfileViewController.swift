//
//  ProfileViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 06/04/1443 AH.
//

import UIKit


class ProfileViewController:UIViewController {
    @IBOutlet weak var logOutName: UIButton!
    
    @IBOutlet var profileID: UILabel!
    
    @IBOutlet var profileName: UILabel!
    
    @IBOutlet var showID: UILabel!
    
    @IBOutlet var showName: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    let userDefault = UserDefaults.standard
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutName.setTitle("Log Out".localized, for: .normal)
        profileID.text = "Student ID:".localized
        profileName.text = "Student Name:".localized
        profileImage.image = UIImage(named: "ProfileIMG")
        let id = userDefault.string(forKey: "id")
        showID.text = id
        let name = userDefault.string(forKey: "name")
        showName.text = name
    }
    
   
    
    @IBAction func logOutButton(_ sender: UIButton) {
        userDefault.set(false, forKey: "isLogIn")
        userDefault.set(false, forKey: "imageNameSelected")
        userDefault.set("", forKey: "id")
        userDefault.set("", forKey: "name")
        userDefault.synchronize()
        performSegue(withIdentifier: "LogOut", sender: nil)
    }
    

}

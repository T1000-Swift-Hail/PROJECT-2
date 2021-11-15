//
//  EditProfileViewController.swift
//  PROJECT-2
//
//  Created by Mac on 14/11/2021.
//

import UIKit

class EditProfileUITableViewController: UITableViewController {
    
    @IBOutlet weak var editProfileCustomer: UIImageView!
    
    @IBOutlet weak var editName: UITextField!
    
    
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customer = userDefaults.string(forKey: "userProfileName") ?? ""
        
        editName.text = customer
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("image from cache")
        let caching = CachingManager()
        let image = caching.image(forKey: "url")
        guard let image = image else { return }
        self.editProfileCustomer.image = image
        
        
    }
    
    
    //to let user change iamge
    @IBAction func editingChanged(_ sender: Any) {
        
        userDefaults.set(editName.text ?? "", forKey: "userProfileName")
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

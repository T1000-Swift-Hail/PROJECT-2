//
//  LoginPage.swift
//  Metalic
//
//  Created by Anas Hamad on 02/04/1443 AH.
//

import UIKit





class LoginPage: UIViewController {
    
    struct Users{
        var userNames :String
        var passWords : String
        var company : String
    }
    
    @IBOutlet var loginicon: UIImageView!
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var passWodText: UITextField!
    @IBOutlet var loginButton: UIButton!
    let defaults = UserDefaults.standard
    //manegare users
    var users  = [Users(userNames: "Anas", passWords:"123123",company: "Aramco")
                  ,Users(userNames: "Fahad", passWords: "123",company: "Maaden")
                  ,Users(userNames: "Khaled", passWords: "887788",company: "Saudico")
                  ,Users(userNames: "Majed", passWords: "576576",company: "Sabic")]
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Keeping Login
        if defaults.bool(forKey: "in Login") {
            performSegue(withIdentifier: "TabBarHome" , sender: nil)}
        passWodText?.isSecureTextEntry = true
    }
    
    // MARK: - Login Bottun
    
    @IBAction func logIn(_ sender: Any) {
        let userProfile = users
        guard let user = usernameText.text else {return}
        guard let pass = passWodText.text else {return}
        
        //chick info is match
        for myUsers in userProfile {
            if user == myUsers.userNames && pass == myUsers.passWords  {
                performSegue(withIdentifier: "TabBarHome", sender: nil)
                defaults.set(true, forKey: "in Login")
            }
            //For user defauls match
            if  user == defaults.string(forKey: "userName") && pass == defaults.string(forKey: "passWord"){
                performSegue(withIdentifier: "TabBarHome", sender: nil)
            }
            // if is empety username and password
            if (usernameText.text!.isEmpty || passWodText.text!.isEmpty){
                DisplayMyAlert(title: "Wrong", message: "UserName or Password is empity")
            }
            
            else {
                DisplayMyAlert(title: "Wrong", message: "UserName or Password is Wrong")}
        }
    }
    // MARK: - For registoration
    
    @IBAction func joinUsButton(_ sender: Any) {
        performSegue(withIdentifier: "Registration", sender: nil)
    }
    // MARK: - skip bottun
    
    @IBAction func skipButton(_ sender: Any) {
        performSegue(withIdentifier: "TabBarHome", sender: nil)
        defaults.removeObject(forKey: "userName")
        defaults.removeObject(forKey: "companyName")
    }
    // MARK: -  alert
    
    func DisplayMyAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(Ok)
        present(alert, animated: true, completion: nil)
    }
}





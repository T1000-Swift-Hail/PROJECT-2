//
//  SecondViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 02/04/1443 AH.
//
import SafariServices
import UIKit

class Login: UIViewController {

    @IBOutlet weak var loginImage: UIImageView!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    let userDefault = UserDefaults.standard
    
    // MARK: - Students Users
    
    let student1 = Users(id: 20214429, password: "qqww1234", name: "Nawaf Altmimi".localized)
    let student2 = Users(id: 20215000, password: "aass1234", name: "Abdullah Alanzi".localized)
    let student3 = Users(id: 20218742, password: "zzxx1234", name: "Fahad Saud".localized)
    let student4 = Users(id: 20213425, password: "Qwqw1234", name: "Khalid Alshammari".localized)
    let student5 = Users(id: 20211232, password: "Asas1234", name: "Mubarak Alqahtani".localized)
    let student6 = Users(id: 20211212, password: "Zxzx1234", name: "Abdulaziz alghamdi".localized)
    let student7 = Users(id: 20216830, password: "Kasx2231", name: "Salem Atallah".localized)
    let student8 = Users(id: 20216034, password: "Stu22313", name: "Mohammed Alkaseb".localized)
    let student9 = Users(id: 20212974, password: "Edsa3392", name: "Abdulrahman alshehri".localized)
    let student10 = Users(id: 20217203, password: "Ll536214", name: "Nayef Altmimi".localized)

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginImage.image = UIImage(named: "StudentLogo")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissTap))
        view.addGestureRecognizer(tap)
      
        idTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    
    }
    
    // Skip login screen if logged in already
    override func viewDidAppear(_ animated: Bool) {
        let isLoggedIn = userDefault.bool(forKey: "isLogIn")
        if isLoggedIn {
            
            performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        }
    }
    
    
   
    // MARK: - Segue Commands
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    let students = [student1,student2,student3,student4,student5,student6,student7,student8,student9,student10]
    
        
        // Setting idTextField to accept Only Int
        guard let id: Int = Int(idTextField.text ?? "nil") else { return showAlert(title: "Wrong ID!".localized, message: "Please type your ID correctly!".localized)}
        
        guard let password = passwordTextField.text else { return showAlert(title: "Wrong Password!".localized, message: "Retype your password!".localized) }
        
        
       // Saving user default
        userDefault.set(true, forKey: "isLogIn")
        userDefault.set(idTextField.text, forKey: "id")
        let loggedInUser = students.first(where: { user in
            return user.id == id
        })
        
        userDefault.set(loggedInUser?.name, forKey: "name")
        userDefault.synchronize()

        
        // Login Check
        for student in students {
           
      if (id == student.id && password == student.password) {
        performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        return
      }
    }

        showAlert(title: "Wrong Account".localized, message: "Please retype your account".localized)
}
    
    
    // MARK: - Dismiss Tap
    
   @objc func dismissTap() {
        idTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    // MARK: - Alert
    func showAlert (title:String,message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK".localized, style: .default) { ok in
            print("OK".localized)
        }
            alert.addAction(ok)
            
            present(alert, animated: false)
        }
    
    
    
    // MARK: - Safari URL Button
    
    @IBAction func urlButton(_ sender: UIButton) {
        guard let url = URL(string: "http://www.uoh.edu.sa/Pages/default.aspx") else { return }
        
        let vc = SFSafariViewController(url: url)
        present(vc, animated: false)
    }
   
    
}


//
//  SecondViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 02/04/1443 AH.
//
import SafariServices
import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    let userDefault = UserDefaults.standard
    
    // MARK: - Students Users
    
    let student1 = Users(id: 20214429, password: "qqww1234")
    let student2 = Users(id: 20215000, password: "aass1234")
    let student3 = Users(id: 20218742, password: "zzxx1234")
    let student4 = Users(id: 20213425, password: "Qwqw1234")
    let student5 = Users(id: 20211232, password: "Asas1234")
    let student6 = Users(id: 20211212, password: "Zxzx1234")
    let student7 = Users(id: 20216830, password: "Kasx2231")
    let student8 = Users(id: 20216034, password: "Stu22313")
    let student9 = Users(id: 20212974, password: "Edsa3392")
    let student10 = Users(id: 20217203, password: "Ll536214")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissTap))
        view.addGestureRecognizer(tap)
        idTextField.delegate = self
        passwordTextField.delegate = self
        idTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let isLoggedIn = userDefault.bool(forKey: "isLogIn")
        
        if isLoggedIn {
            
            performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        }
    }
    
    // MARK: - Password Limit
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let maxLength = 16
//        let currentLimit: NSString = (passwordTextField.text ?? " ") as NSString
//        let newLimit: NSString =
//        currentLimit.replacingCharacters(in: range, with: string) as NSString
//        return newLimit.length <= maxLength
//    }
    
   
    // MARK: - Segue Commands
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    let students = [student1,student2,student3,student4,student5,student6]
        
        // Setting idTextField to accept Only Int
        guard let id: Int = Int(idTextField.text ?? "nil") else { return showAlert(title: "Wrong ID!".localized, message: "Please type your ID correctly!".localized)}
        
        guard let password = passwordTextField.text else { return showAlert(title: "Wrong Password!".localized, message: "Retype your password!".localized) }
        

        userDefault.set(true, forKey: "isLogIn")
        userDefault.synchronize()

        // Login Check
    for student in students {
      if id == student.id && password == student.password {
        performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        return
        } else   {
            showAlert(title: "Wrong Account".localized, message: "Please retype your account".localized)
        }
    }
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


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
    
    
    let titleName = "Second Page"
    
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
        if userDefault.bool(forKey: "isLogIn") {
            performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissTap))
        view.addGestureRecognizer(tap)
        idTextField.delegate = self
        passwordTextField.delegate = self
        idTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    
    }
    
    // MARK: - Password Limit
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 14
        let currentLimit: NSString = (passwordTextField.text ?? " ") as NSString
            let newLimit: NSString =
        currentLimit.replacingCharacters(in: range, with: string) as NSString
            return newLimit.length <= maxLength
    }
    
    // MARK: - Segue Commands
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController
        vc?.get = titleName
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    let students = [student1,student2,student3,student4,student5,student6]
        
        // Setting idTextField to accept Only Int
    guard let id: Int = Int(idTextField.text ?? "nil") else { return alerts(title: "Wrong ID!", message: "Please type your ID correctly!")}
        
    guard let pass = passwordTextField.text else { return alerts(title: "Wrong Password!", message: "Retype your password!") }
        
    userDefault.set(true, forKey: "isLogIn")
        
        // Login Check
    for student in students {
      if id == student.id && pass == student.password {
        performSegue(withIdentifier: "WelcomeScreen", sender: nil)
        return
        } else   {
        alerts(title: "Wrong Account", message: "Please retype your account")
        }
    }
}
    
    
    // MARK: - Dismiss Tap
    
   @objc func dismissTap() {
        idTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    // MARK: - Alert
    private func alerts (title:String,message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { ok in
            print("OK")
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


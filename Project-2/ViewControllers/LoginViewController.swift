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
    
    let student1 = Users(id: 20214429, password: "qqww1234")
    let student2 = Users(id: 20215000, password: "aass1234")
    let student3 = Users(id: 20218742, password: "zzxx1234")
    let student4 = Users(id: 20213425, password: "Qwqw1234")
    let student5 = Users(id: 20211232, password: "Asas1234")
    let student6 = Users(id: 20211212, password: "Zxzx1234")
    

    let titleName = "Second Page"
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if userDefault.bool(forKey: "isLogIn") {
            performSegue(withIdentifier: "SecondPage", sender: nil)
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissTap))
        view.addGestureRecognizer(tap)
        idTextField.delegate = self
        passwordTextField.delegate = self
        idTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController
        vc?.get = titleName
    }


    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let students = [student1,student2,student3,student4,student5,student6]
        
        guard let id: Int = Int(idTextField.text ?? "nil") else { return alerts(title: "Wrong ID!", message: "Please type your ID correctly!")}
        
        guard let pass = passwordTextField.text else { return alerts(title: "Wrong Password!", message: "Retype your password!") }
        
        userDefault.set(true, forKey: "isLogIn")
        
        for student in students {
            if id == student.id && pass == student.password {
              performSegue(withIdentifier: "SecondPage", sender: nil)
                return
            } else {
            alerts(title: "Wrong Account", message: "Please retype your account")
            }
        }
    }
    
   @objc func dismissTap() {
        idTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    private func alerts (title:String,message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { ok in
            print("OK")
        }
            
            alert.addAction(ok)
            
            present(alert, animated: false)
        }
    
    
    
    
    
    @IBAction func urlButton(_ sender: UIButton) {
        guard let url = URL(string: "http://www.uoh.edu.sa/Pages/default.aspx") else { return }
        
        let vc = SFSafariViewController(url: url)
        present(vc, animated: false)
    }
   
    
    
    
    
    
    
}


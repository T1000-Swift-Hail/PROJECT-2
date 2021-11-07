//
//  SecondViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 02/04/1443 AH.
//
import SafariServices
import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var projectName: UILabel!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let student1 = Users(id: 20214429, password: "Password")
    let student2 = Users(id: 20212312, password: "Password")
    let student3 = Users(id: 20218742, password: "Password")
    let student4 = Users(id: 20213425, password: "Password")
    let student5 = Users(id: 20211232, password: "Password")
    let student6 = Users(id: 20211212, password: "Password")
    

    let titleName = "Second Page"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.delegate = self
        idTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController
        vc?.get = titleName
    }


    
    @IBAction func loginButton(_ sender: UIButton) {
        let students = [student1,student2,student3,student4,student5,student6]
        
        guard let id: Int = Int(idTextField.text ?? "nil") else { return }
        guard let pass = idTextField.text else { return }
        
        for student in students {
            if id == student.id && pass != student.password {
              performSegue(withIdentifier: "SecondPage", sender: nil)
                
            } else if id != student.id && pass != student.password {
                alerts()

            }
            else {
                return
            }
        }
    }
    
        private func alerts () {
        let alert = UIAlertController(title: "Wrong Account", message: "Please retype your account", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { ok in
            print("OK")
        }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(ok)
            alert.addAction(cancel)
            present(alert, animated: false)
        }
    
    
    
    
    
    @IBAction func urlButton(_ sender: UIButton) {
        guard let url = URL(string: "http://www.uoh.edu.sa/Pages/default.aspx") else { return }
        
        let vc = SFSafariViewController(url: url)
        present(vc, animated: false)
    }
    
}


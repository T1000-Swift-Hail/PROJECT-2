//
//  ViewController.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 07/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNames: UITextField!
    @IBOutlet weak var PasswordUser: UITextField!
    
    var Name1 = User(FirstName: "Khaled22", Password: "123456")
    var Name2 = User(FirstName: "Abdullah34", Password: "123456")
    var Name3 = User(FirstName: "Saad12", Password: "123456")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func logIn(_ sender: Any) {
        performSegue(withIdentifier: "booksCategories", sender: nil)
    }
    
}


//
//  MessageVC.swift
//  PROJECT-2
//
//  Created by mona aleid on 09/04/1443 AH.
//

import UIKit

class MessageVC: UIViewController {

    @IBOutlet weak var partnerEmail: UITextField!
    
    @IBOutlet weak var messageToPartners: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        showAlertView()
    }
    func showAlertView(){
        let alert = UIAlertController (title: "Hi", message: "Did You Write Your Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes I Did ", style: .default, handler: { action in
            print("Yes I Did clicked")
        }))
        alert.addAction(UIAlertAction(title: "Not Yet", style: .cancel, handler: nil) )
        present(alert, animated: true, completion: nil)
    }
    }
    

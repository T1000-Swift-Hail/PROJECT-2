//
//  MessageVC.swift
//  PROJECT-2
//
//  Created by mona aleid on 09/04/1443 AH.
//

import UIKit

class MessageVC: UIViewController {

    
    // here we used the alert func to make sure that the users already wrote the message for the partners
    
    @IBOutlet weak var partnerEmail: UITextField!
    
    @IBOutlet weak var messageToPartners: UITextField!
    
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        partnerEmail.text = email
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        showAlertView()
    }
    func showAlertView(){
        let alert = UIAlertController (title: "Hi".localaized, message: "Did You Write Your Message".localaized, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes I Did".localaized, style: .default, handler: { action in
            print("Yes I Did clicked")
            
        }))
        alert.addAction(UIAlertAction(title: "Not Yet".localaized, style: .cancel, handler: nil) )
        present(alert, animated: true, completion: nil)
        
        
    }
    }
    

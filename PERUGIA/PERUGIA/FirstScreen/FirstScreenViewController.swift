//
//  SecondScreenViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 05/04/1443 AH.
//

import UIKit

enum Suges:String {
    
    case CreateAccount = "CreateAccount"
    case Third = "Third"
}
class SecondScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    @IBAction func btnSecondUI(_ sender: Any) {
    
        performSegue(withIdentifier: Suges.CreateAccount.rawValue, sender: nil)
        
    
//        let secondScreen = self.storyboard?.instantiateViewController(identifier: "secondUIID")
//        navigationController?.pushViewController(secondScreen!, animated: true)
//    }
    
  
    }
}

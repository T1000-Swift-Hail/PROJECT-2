//
//  RegisterVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 04/04/1443 AH.
//

import UIKit

class RegisterVC: BaseVC {
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfCPassword: UITextField!
    @IBOutlet weak var butManager: UIButton!
    @IBOutlet weak var butCustomer: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        butCustomer.isSelected = true
    }
    
    
    @IBAction func didTapCustomer(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        butManager.isSelected = !butManager.isSelected
    }
    
    @IBAction func didTapManager(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        butCustomer.isSelected = !butCustomer.isSelected
    }
    
    
    
    
    @IBAction func didTapSignup(_ sender: Any) {
        showAlert("Clicked Sign up")
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        doDismiss(true)
    }
}

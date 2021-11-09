//
//  BaseVC.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 04/04/1443 AH.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - goto new viewcontroller or dismiss
    func gotoNavVC (_ nameVC: String, _ animated: Bool = true) {
        let toVC = self.storyboard?.instantiateViewController( withIdentifier: nameVC)
        self.navigationController?.pushViewController(toVC!, animated: animated)
    }
    
    func doDismiss(_ animated: Bool = true){
        self.navigationController?.popViewController(animated: animated)
    }
    
    func doRootDismiss(_ animated: Bool = true){
        self.navigationController?.popToRootViewController(animated: animated)
    }
    
    func gotoVC(_ nameVC: String, _ animated: Bool = false){
        let toVC = self.storyboard?.instantiateViewController( withIdentifier: nameVC)
        toVC!.modalPresentationStyle = .fullScreen
        self.present(toVC!, animated: animated, completion: nil)
    }
    
    
    // MARK: - show alert
    func showAlertDialog(title: String!, message: String!, positive: String?, negative: String?) {

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if (positive != nil) {
            alert.addAction(UIAlertAction(title: positive, style: .default, handler: nil))
        }

        if (negative != nil) {
            alert.addAction(UIAlertAction(title: negative, style: .default, handler: nil))
        }

        DispatchQueue.main.async(execute:  {
         self.present(alert, animated: true, completion: nil)
        })
    }

    func showError(_ message: String!) {
        showAlertDialog(title: "", message: message, positive:"OK", negative: nil)
    }

    func showSuccess(_ message: String!) {
        showAlertDialog(title: "", message: message, positive: "OK", negative: nil)
    }
     
    internal func showAlert(title: String?, message: String?, positive: String, negative: String?, okClosure: (() -> Void)?, cancelClosure: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if negative != nil {
            let noAction = UIAlertAction(title: negative, style: .destructive, handler: { (action: UIAlertAction) in
                if cancelClosure != nil {
                    cancelClosure!()
                }
            })
            alertController.addAction(noAction)
        }
        
        let yesAction = UIAlertAction(title: positive, style: .default, handler: { (action: UIAlertAction) in
            if okClosure != nil {
                okClosure!()
            }
        })
        alertController.addAction(yesAction)


        self.present(alertController, animated: true, completion: nil)
    }
     
    func showAlert(_ message: String!) {
        showAlertDialog(title: "Alert", message: message, positive: "OK", negative: nil)
    }
}

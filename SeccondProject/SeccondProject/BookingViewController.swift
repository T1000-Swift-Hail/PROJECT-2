//
//  BookingViewController.swift
//  SeccondProject
//
//  Created by iAbdullah17 on 04/04/1443 AH.
//

import UIKit

class BookingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    fileprivate func paymentAlert() {
        let alert = UIAlertController(title: "Are you sure?".translated, message: "", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Yes".translated, style: .default) { ok in
            self.performSegue(withIdentifier: "Payment", sender: nil)
        }
        let cancel = UIAlertAction(title: "No".translated, style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: false)
    }
    

    
    @IBAction func firstMatch(_ sender: Any) {
        paymentAlert()
    }
    
    @IBAction func seccondMatch(_ sender: Any) {
        paymentAlert()
    }
    
    @IBAction func thirdMatch(_ sender: Any) {
       paymentAlert()
    }
    
    @IBAction func fourthMatch(_ sender: Any) {
        paymentAlert()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


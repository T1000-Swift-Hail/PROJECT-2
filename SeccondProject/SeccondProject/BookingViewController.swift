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
        let alert = UIAlertController(title: "Are you sure", message: "", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { ok in
            self.performSegue(withIdentifier: "Fourth", sender: nil)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: false)
    }
    

    
    @IBAction func FirstMatch(_ sender: Any) {
        paymentAlert()
    }
    
    @IBAction func SeccondMatch(_ sender: Any) {
        paymentAlert()
    }
    
    @IBAction func ThirdMatch(_ sender: Any) {
       paymentAlert()
    }
    
    @IBAction func FourthMatch(_ sender: Any) {
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

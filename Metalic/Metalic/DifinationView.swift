//
//  DifinationView.swift
//  Metalic
//
//  Created by Anas Hamad on 04/04/1443 AH.
//

import UIKit
import SafariServices

class DifinationView: UIViewController {

    
    @IBOutlet var moreInfoB: UIButton!
    
    @IBOutlet var contactUsB: UIButton!
    @IBOutlet var preOrderB: UIButton!
    @IBOutlet var stepper: UIStepper!
    @IBOutlet var ValueLabel: UILabel!
    @IBOutlet var textFeildView: UITextView!
    @IBOutlet var imageview: UIImageView!
    var imageSelected : UIImage?
    var TextSelected : String?
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = imageSelected
        textFeildView?.text = TextSelected
        
        stepper.wraps = true
          stepper.autorepeat = true
          stepper.maximumValue = 10
        preOrderB.setTitle("preOrder".localized, for: .normal)
        contactUsB.setTitle("Contact Us".localized, for: .normal)
        moreInfoB.setTitle("More Info".localized, for: .normal)
        
    }
    @IBAction func preOrderBottun(_ sender: Any) {
        DisplayMyAlert(title: "Thank you".localized, message: "Your order has been sent , we will contact you soon for Diamentions for \(String(describing: ValueLabel.text!)) Gears ...")
        
    }
   
    func DisplayMyAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let Ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(Ok)
        present(alert, animated: true, completion: nil)
        
        
    }
    @IBAction func lernMore(_ sender: Any) {
        guard let url = URL(string: "https://en.wikipedia.org/wiki/Gear") else {return}
                let vc = SFSafariViewController(url: url)
        present(vc, animated: false)
    }
    
    @IBAction func steperValveChange(_ sender: UIStepper) {
        ValueLabel.text = String(sender.value)
    }
    
}
extension String{
    var localized  : String {
        return NSLocalizedString(self, comment: "")
    }
}

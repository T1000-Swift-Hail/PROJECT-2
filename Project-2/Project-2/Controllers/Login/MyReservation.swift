//
//  MyReservation.swift
//  Project-2
//
//  Created by Majed Alshammari on 06/04/1443 AH.
//

import UIKit

let userDefault = UserDefaults.standard

class MyReservation: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusResult: UILabel!
    @IBOutlet var selctedImage: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Your Chosen Room :".localized
        statusLabel.text = "Reserve Status :".localized
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if userDefault.bool(forKey: "SelectedAddress") {
            DispatchQueue.main.async {
            let selectedImage = userDefault.string(forKey: "imageNameSelected")
                self.selctedImage.image = UIImage(named: selectedImage!)
            }
            statusResult.text = "Pending...".localized
        }
    }
        
        
}
    
   
    
    
  


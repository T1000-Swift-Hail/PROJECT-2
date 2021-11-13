//
//  MyReservation.swift
//  Project-2
//
//  Created by Majed Alshammari on 06/04/1443 AH.
//

import UIKit

let userDefault = UserDefaults.standard
var imageSelected : UIImage?

class MyReservation: UIViewController {
    @IBOutlet var selctedImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if userDefault.bool(forKey: "selectedAddress") {
//            selctedImage.image = UIImage(named: "Duplex")
//        }
//        let image = userDefault.object(forKey: "duplexImage")
//        selctedImage.image = image as? UIImage
      
        //userDefault.set(selctedImage, forKey: "duplexImage")
        selctedImage.image = imageSelected
    }
    
   
    
    
  
}

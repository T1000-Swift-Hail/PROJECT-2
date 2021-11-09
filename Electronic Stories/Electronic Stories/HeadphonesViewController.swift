//
//  HeadphonesViewController.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class HeadphonesViewController: UIViewController {

    @IBOutlet weak var imgHeadPhone: UIImageView!
    
    @IBOutlet weak var nameHeadPhone: UILabel!
    
    @IBOutlet weak var priceHeadPhone: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
func setupCell (photo : UIImage, name :String , price : Double ){
    imgHeadPhone.image = photo
    nameHeadPhone.text = name
    priceHeadPhone.text = "\(price)SAR "
   
}

}

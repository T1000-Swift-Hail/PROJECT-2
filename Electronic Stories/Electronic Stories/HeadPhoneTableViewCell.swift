//
//  HeadPhoneTableViewCell.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class HeadPhoneTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgHeadphone: UIImageView!
    
    @IBOutlet weak var nameHeadPhone: UILabel!
    
    @IBOutlet weak var priceHeadphone: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func contentCell (photo : UIImage, name :String , price : Double ){
        imgHeadphone.image = photo
        nameHeadPhone.text = name
        priceHeadphone.text = "\(price)SAR "
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

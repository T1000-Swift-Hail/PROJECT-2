//
//  phoneTableViewCell.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 03/04/1443 AH.
//

import UIKit

class phoneTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPhone: UIImageView!
    @IBOutlet weak var lblNamePhone: UILabel!
    @IBOutlet weak var lblPricePhone: UILabel!
    @IBOutlet weak var btnAddCart: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func contentCell (photo : UIImage, name :String , price : Double ){
        imgPhone.image = photo
        lblNamePhone.text = name
        lblPricePhone.text = "\(price)SAR "
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
   

}
}

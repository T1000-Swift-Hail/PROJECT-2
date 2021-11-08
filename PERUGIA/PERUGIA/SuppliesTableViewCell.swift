//
//  SuppliesTableViewCell.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 03/04/1443 AH.
//

import UIKit

class SuppliesTableViewCell: UITableViewCell {
    @IBOutlet weak var ImgSuppliesPhoto: UIImageView!
    
    @IBOutlet weak var lblSuppliesName: UILabel!
    
    @IBOutlet weak var lblSuppliesPrice: UILabel!
    
    
    @IBOutlet weak var lblSuppliesDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setupCell(photo: UIImage, name: String, price: Double, description: String){
        
        
        ImgSuppliesPhoto.image = photo
        lblSuppliesName.text = name
        lblSuppliesPrice.text = "\(price)SAR"
        lblSuppliesDescription.text = description
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MenuCall.swift
//  Marssai
//
//  Created by Huda N S on 02/04/1443 AH.
//

import UIKit

class MenuCell: UITableViewCell {
    //cell items
    @IBOutlet weak var imgProductPhoto: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var discripProduct: UILabel!
    
    //function to design images
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProductPhoto.layer.cornerRadius = 12
        imgProductPhoto.clipsToBounds = true
    }
    
    //Function to setup items in cells
    func setupCell(photo : UIImage , name : String , price : Double , discrip : String ){
        imgProductPhoto.image = photo
        nameProduct.text = name
        priceProduct.text = "\(price) SAR"
        discripProduct.text = discrip
    }
    //The selection affects the appearance of labels, image, and background.
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

//
//  MenuCall.swift
//  Marssai
//
//  Created by Huda N S on 02/04/1443 AH.
//

import UIKit

class MenuCell: UITableViewCell {

    
    
    @IBOutlet weak var imgProductPhoto: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var discripProduct: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProductPhoto.layer.cornerRadius = 12
        imgProductPhoto.clipsToBounds = true
        
        
        
        // Initialization code
    }
    
    func setupCall(photo : UIImage , name : String , price : Double , discrip : String ){
        
        imgProductPhoto.image = photo
        nameProduct.text = name
        priceProduct.text = "\(price) SAR"
        discripProduct.text = discrip
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

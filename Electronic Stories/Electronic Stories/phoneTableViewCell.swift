//
//  phoneTableViewCell.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 03/04/1443 AH.
//

import UIKit

class phoneTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPhone: UIImageView!
    @IBOutlet weak var namePhone: UILabel!
    @IBOutlet weak var pricePhone: UILabel!
    
    @IBOutlet weak var addToCart: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    
    func contentCell (photo : UIImage, name :String , price : Double ){
        imgPhone.image = photo
        namePhone.text = name
        pricePhone.text = "\(price)SAR "
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

}

    @IBAction func addCart(_ sender: Any) {
       let proudect = Phone(name:namePhone.text ?? "" ,price: Double(Int(pricePhone.text ?? "0") ?? 0) , photo : imgPhone.image!)
    }
    
}


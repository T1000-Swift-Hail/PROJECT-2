//
//  AndroidTableViewCell.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 07/04/1443 AH.
//

import UIKit

class AndroidTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAndroid: UIImageView!
    
    @IBOutlet weak var nameAndroid: UILabel!
    
    @IBOutlet weak var priceAndroid: UILabel!
    
    
    @IBOutlet weak var CartAndeoid: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func myCell (photo : UIImage, name :String , price : Double ){
        imgAndroid.image = photo
        nameAndroid.text = name
        priceAndroid.text = "\(price) SAR "
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }

  

    @IBAction func addGalaxy(_ sender: Any) {
  
    
    let proudect = Galaxy(name:nameAndroid.text ?? "" ,price: Double(Int(priceAndroid.text ?? "0") ?? 0) , photo : imgAndroid.image!)
        shoppingCartAndroid.products.append(proudect)
       
}
}


//
//  Cell.swift
//  project2
//
//  Created by Mastorah on 08/11/2021.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productprice: UILabel!
    @IBOutlet weak var imgproduct: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var btnAdd: UIButton!
    func setupCall(photo: UIImage, name: String, price: Int) {
        imgproduct.image = photo
        productName.text = name
        productprice.text = "\(price) SAR"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

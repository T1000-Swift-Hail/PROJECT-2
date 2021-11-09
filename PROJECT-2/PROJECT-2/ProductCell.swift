//
//  ProductCell.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 04/04/1443 AH.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

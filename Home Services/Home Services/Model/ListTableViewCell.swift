//
//  ListTableViewCell.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    

    @IBOutlet weak var prodact: UILabel!
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

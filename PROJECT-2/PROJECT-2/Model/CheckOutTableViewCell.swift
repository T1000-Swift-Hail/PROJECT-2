//
//  CheckOutTableViewCell.swift
//  PROJECT-2
//
//  Created by Mac on 11/11/2021.
//

import UIKit

class CheckOutTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var ProducType: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productColor: UILabel!
    @IBOutlet weak var productSize: UILabel!
    @IBOutlet weak var productQuantity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

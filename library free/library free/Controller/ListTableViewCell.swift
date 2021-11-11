//
//  ListTableViewCell.swift
//  library free
//
//  Created by موضي الحربي on 03/04/1443 AH.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var BookLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ListratingTableViewCell.swift
//  library free
//
//  Created by موضي الحربي on 04/04/1443 AH.
//

import UIKit

class ListratingTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var Lablecell: UILabel!
    
    @IBOutlet weak var Imagcell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

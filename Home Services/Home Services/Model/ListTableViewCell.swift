//
//  ListTableViewCell.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import UIKit

 // This for arry of list in services

class ListTableViewCell: UITableViewCell {
    

    @IBOutlet weak var prodact: UILabel!
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    // func selected to bool
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

//
//  ProfileImage.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 08/11/2021.
//

import UIKit

class ProfileImage: UITableViewCell {
    
    @IBOutlet weak var ImageProfile: UIImageView!
    @IBOutlet weak var NameProfile: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

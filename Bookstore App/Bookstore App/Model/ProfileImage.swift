//
//  ProfileImage.swift
//  Bookstore App
//
//  Created by طلال عبيدالله دعيع القلادي on 08/11/2021.
//

import UIKit
// using class to profile Image with lable
class ProfileImage: UITableViewCell {
    
    @IBOutlet weak var ImageProfile: UIImageView!
    @IBOutlet weak var NameProfile: UILabel!
    
    // using func to change font and size all the row
    override func awakeFromNib() {
        super.awakeFromNib()
        NameProfile.font = UIFont(name: "Amiri-Bold", size: 20)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

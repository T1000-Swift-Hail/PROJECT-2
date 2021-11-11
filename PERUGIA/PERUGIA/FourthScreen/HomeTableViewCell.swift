//
//  HomeTableViewCell.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 02/04/1443 AH.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPlatePhoto: UIImageView!
    @IBOutlet weak var lblPlateName: UILabel!
    
    @IBOutlet weak var lblPlatePrice: UILabel!
    
    @IBOutlet weak var lblPlateDrscription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    func setupCell(photo: UIImage, name: String, description: String) {
        imgPlatePhoto.image = photo
        lblPlateName.text = name
        lblPlateDrscription.text = description
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func addFavorite(_ sender: UIButton) {
        print("clicked")
        
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)


   
        }

}

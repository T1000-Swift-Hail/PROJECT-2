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
    
    @IBOutlet weak var AddFavorite: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    func setupCell(photo: UIImage, name: String, price: Double, description: String) {
        imgPlatePhoto.image = photo
        lblPlateName.text = name
        lblPlatePrice.text = "\(price)SAR"
        lblPlateDrscription.text = description
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func addFavorite(_ sender: Any) {
//        cell.btnAddfavorite.addTarget(self, action: #selector(Addfavorite(sender :)),
//        for: .touchUpInside)
    }
   

}

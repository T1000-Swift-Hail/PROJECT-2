//
//  CharcoalCollectionViewCell.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 08/04/1443 AH.
//

import UIKit

class CharcoalCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgCharcoalPhoto: UIImageView!
    @IBOutlet weak var lblCharcoal: UILabel!
    
    
    func setupCell(photo: UIImage, name: String){
        imgCharcoalPhoto.image = photo
        lblCharcoal.text = name
    }
}

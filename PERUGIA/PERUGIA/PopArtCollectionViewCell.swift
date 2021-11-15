//
//  PopArtCollectionViewCell.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 06/04/1443 AH.
//

import UIKit

class PopArtCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imgPopPhoto: UIImageView!
    @IBOutlet weak var lblPopName: UILabel!
    
    
    func setupCell(photo: UIImage, name: String){
        imgPopPhoto.image = photo
        lblPopName.text = name
    }
    
}

//
//  ProductCell.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation
import UIKit

// detile of product cell
class ProductCell: UICollectionViewCell {
 
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    //
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}

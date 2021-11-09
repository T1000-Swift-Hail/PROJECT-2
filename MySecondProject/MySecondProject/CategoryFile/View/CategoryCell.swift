//
//  CategoryCell.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation
import UIKit

class CategoryCell: UITableViewCell {

    // connect button
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var view: UIView!
    
    /*
    
     */
    func updateViews(category: Category){
        //
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
    func whenViewClicked() {
        view.isHidden = false
        categoryTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}

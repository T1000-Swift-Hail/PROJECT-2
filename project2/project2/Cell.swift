//
//  Cell.swift
//  project2
//
//  Created by Mastorah on 08/11/2021.
//

import UIKit

class Cell: UITableViewCell {

    
    
    @IBOutlet weak var imgproduct: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productprice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
 

    //add products to shoppingcart
    @IBAction func btnAdd(_ sender: UIButton) {
        let product = Product(name: productName.text ?? "", price: Int(productprice.text ?? "0") ?? 0 ,photo: imgproduct.image!)
        shoppingCart.items.append(product)

        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

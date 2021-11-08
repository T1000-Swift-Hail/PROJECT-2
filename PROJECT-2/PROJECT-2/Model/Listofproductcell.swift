//
//  Listofproductcell.swift
//  PROJECT-2
//
//  Created by Mac on 08/11/2021.
//

import UIKit

class Listofproductcell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameClothing: UILabel!
    
    @IBOutlet weak var sizeClothing: UISegmentedControl!
    
    @IBOutlet weak var tshirtImage: UIImageView!
    
    let sizes = [SizeTypes.l,SizeTypes.m,SizeTypes.s,SizeTypes.xl,SizeTypes.other]
    
    @IBOutlet weak var addCard: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()

        sizeClothing.setTitle(SizeTypes.xl.rawValue, forSegmentAt: 0)
        sizeClothing.setTitle(SizeTypes.l.rawValue, forSegmentAt: 1)
        sizeClothing.setTitle(SizeTypes.m.rawValue, forSegmentAt: 2)
        sizeClothing.setTitle(SizeTypes.s.rawValue, forSegmentAt: 3)
        sizeClothing.setTitle(SizeTypes.other.rawValue, forSegmentAt: 4)
        
    
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

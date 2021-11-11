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
    
    @IBOutlet weak var productImage: UIImageView!
    
    var prodcutImageColors : [String]!
    
    @IBOutlet weak var colorClothing: UISegmentedControl!
    
    @IBOutlet weak var priceClothing: UILabel!
    
    @IBOutlet weak var quantityProduct: UILabel!
    
    let sizes = [SizeTypes.l,SizeTypes.m,SizeTypes.s,SizeTypes.xl,SizeTypes.other]
    
    let colors = [ColorType.black,ColorType.blue,ColorType.white,ColorType.yellow,ColorType.other,]
    var prodcut = Product()
    
    @IBOutlet weak var addCard: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()

        sizeClothing.setTitle(SizeTypes.xl.rawValue, forSegmentAt: 0)
        sizeClothing.setTitle(SizeTypes.l.rawValue, forSegmentAt: 1)
        sizeClothing.setTitle(SizeTypes.m.rawValue, forSegmentAt: 2)
        sizeClothing.setTitle(SizeTypes.s.rawValue, forSegmentAt: 3)
        sizeClothing.setTitle(SizeTypes.other.rawValue, forSegmentAt: 4)
        
        colorClothing.setTitle(ColorType.black.rawValue, forSegmentAt: 0)
        colorClothing.setTitle(ColorType.yellow.rawValue, forSegmentAt: 1)
        colorClothing.setTitle(ColorType.white.rawValue, forSegmentAt: 2)
        colorClothing.setTitle(ColorType.blue.rawValue, forSegmentAt: 3)
        colorClothing.setTitle(ColorType.other.rawValue, forSegmentAt: 4)
        
        
        
    
        
        // Initialization code
    }

    @IBAction func changeColorProduct(_ sender: UISegmentedControl) {
        guard let title = sender.titleForSegment(at: sender.selectedSegmentIndex) else { return }
     
       
            
            switch title {
            case "Black":
                productImage.image = UIImage(named: prodcutImageColors[0])
            case "Yellow":
                productImage.image = UIImage(named: prodcutImageColors[1])
            case "white":
                productImage.image = UIImage(named: prodcutImageColors[2])
            case "Blue":
                productImage.image = UIImage(named: prodcutImageColors[3])
            default:
                productImage.image = UIImage(named: "")
            }
            
        
        

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
    

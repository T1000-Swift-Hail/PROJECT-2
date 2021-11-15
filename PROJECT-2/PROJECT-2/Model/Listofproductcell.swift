//
//  Listofproductcell.swift
//  PROJECT-2
//
//  Created by Mac on 08/11/2021.
//

import UIKit

class Listofproductcell: UITableViewCell {
    
    @IBOutlet weak var brandsImage: UIImageView!
    @IBOutlet weak var nameClothing: UILabel!
    @IBOutlet weak var sizeClothing: UISegmentedControl!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var colorClothing: UISegmentedControl!
    @IBOutlet weak var priceClothing: UILabel!
    @IBOutlet weak var quantityProduct: UILabel!
    
    
    var prodcutImageColors : [String]!
    let sizes: [SizeTypes] = [.l,.m,.s,.xl,.other]
    
    let colors = [ColorType.black,ColorType.blue,ColorType.white,ColorType.yellow,ColorType.other]
    var prodcut = Product()
    let userDefalts = UserDefaults.standard
    
    @IBOutlet weak var addCard: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        sizeClothing.setTitle(SizeTypes.xl.rawValue, forSegmentAt: 0)
        sizeClothing.setTitle(SizeTypes.l.rawValue, forSegmentAt: 1)
        sizeClothing.setTitle(SizeTypes.m.rawValue, forSegmentAt: 2)
        sizeClothing.setTitle(SizeTypes.s.rawValue, forSegmentAt: 3)
        sizeClothing.setTitle(SizeTypes.other.rawValue, forSegmentAt: 4)
        
        colorClothing.setTitle(ColorType.black.rawValue.localization, forSegmentAt: 0)
        colorClothing.setTitle(ColorType.yellow.rawValue.localization, forSegmentAt: 1)
        colorClothing.setTitle(ColorType.white.rawValue.localization, forSegmentAt: 2)
        colorClothing.setTitle(ColorType.blue.rawValue.localization, forSegmentAt: 3)
        colorClothing.setTitle(ColorType.other.rawValue.localization, forSegmentAt: 4)
        
        // Initialization code
    }
    
    @IBAction func addToCart(_ sender: UIButton) {
        myShoppingCart.products.append(prodcut)
    }
    @IBAction func changeColorProduct(_ sender: UISegmentedControl) {
        guard let title = sender.titleForSegment(at: sender.selectedSegmentIndex) else { return }
        
        switch title {
        case ColorType.black.rawValue.localization:
            productImage.image = UIImage(named: prodcutImageColors[0])
            prodcut.productColor = .black
        case ColorType.yellow.rawValue:
            productImage.image = UIImage(named: prodcutImageColors[1])
            prodcut.productColor = .yellow
        case ColorType.white.rawValue:
            productImage.image = UIImage(named: prodcutImageColors[2])
            prodcut.productColor = .white
        case ColorType.blue.rawValue:
            productImage.image = UIImage(named: prodcutImageColors[3])
            prodcut.productColor = .blue
        default:
            productImage.image = UIImage(named: "")
        }
        
        prodcut.tshirtImage = productImage.image
        
    }
    
    @IBAction func changeSize(_ sender:UISegmentedControl) {
        
        guard let title = sender.titleForSegment(at: sender.selectedSegmentIndex) else { return }
        
        switch title {
        case SizeTypes.xl.rawValue:
            prodcut.productSize = .xl
        case SizeTypes.l.rawValue:
            prodcut.productSize = .l
        case SizeTypes.m.rawValue:
            prodcut.productSize = .m
        case SizeTypes.s.rawValue:
            prodcut.productSize = .s
        default:
            print("")
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


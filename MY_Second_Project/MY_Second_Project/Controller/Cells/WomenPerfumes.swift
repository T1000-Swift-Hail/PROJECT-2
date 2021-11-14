//
//  WomenPerfumes.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class WomenPerfumes: UITableViewCell {

    @IBOutlet weak var imgPerfume: UIImageView!
    @IBOutlet weak var perfumeName: UILabel!
    @IBOutlet weak var perfumeSise: UILabel!
    @IBOutlet weak var perfumePrice: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
         }
    
    func contentCell(perfume : Perfume){
        
    perfumeName.text = perfume.perfumeName
    perfumeSise.text = "\(perfume.perfumeSize) ml"
    perfumePrice.text = "\(perfume.perfumePrice) SAR"
    imgPerfume.image = perfume.perfumeImg
        }
    
    @IBAction func addToCartButt(_ sender: UIButton) {
        let perfumeSize = Int(perfumeSise.text ?? "0") ?? 0
        let perfumePrice = Double(perfumePrice.text ?? "0.0") ?? 0.0
        let newPerfum = Perfume(perfumeName: perfumeName.text!, perfumeSize: perfumeSize, perfumePrice: perfumePrice, perfumeImg: imgPerfume.image!)
        myShoppingCart.products.append(newPerfum)
     
       }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       }

   }

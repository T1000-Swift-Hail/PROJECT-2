//
//  MenPerfumes.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class MenPerfumes: UITableViewCell {

    @IBOutlet weak var perfumeName: UILabel!
    @IBOutlet weak var perfumeSize: UILabel!
    @IBOutlet weak var perfumePrice: UILabel!
    @IBOutlet weak var AddToCart: UIButton!
    @IBOutlet weak var imgMenPerfumes: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       }

    func contentCell(perfume : Perfume){
        
    perfumeName.text = perfume.perfumeName
    perfumeSize.text = "\(perfume.perfumeSize) ml "
    perfumePrice.text = "\(perfume.perfumePrice) SAR"
    imgMenPerfumes.image = perfume.perfumeImg
    
       }
    

    @IBAction func addToCartButt(_ sender: UIButton) {
        
    let perfumeSize = Int(perfumeSize.text ?? "0") ?? 0
    let perfumePrice = Double(perfumePrice.text ?? "0.0") ?? 0.0
    let newPerfum = Perfume(perfumeName: perfumeName.text!, perfumeSize: perfumeSize, perfumePrice: perfumePrice, perfumeImg: imgMenPerfumes.image!)
    myShoppingCart.products.append(newPerfum)
        
        }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}

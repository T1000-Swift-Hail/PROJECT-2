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
        // Initialization code
    }
    func contentCell(perfumesImage : UIImage , perfumesName :String , perfumesPrice : Double , perfumesSize : Int){
        
        perfumeName.text = perfumesName
        perfumeSise.text = "\(perfumesSize)ml"
        perfumePrice.text = "\(perfumesPrice) SAR"
        imgPerfume.image = perfumesImage
    }
    
    @IBAction func addToCartButt(_ sender: UIButton) {
        let PerfumeWomen = Perffume(perfumeName: perfumeName.text ?? "", perfumeSize: Int(perfumeSise.text ?? "0") ?? 0, perfumePrice: Double(perfumePrice.text ?? "0.0") ?? 0.0, perfumeImg: imgPerfume.image!)
        cart.product.append(PerfumeWomen)
//        let Perffumee = Perffume(perfumeName: perfumeName.text ?? "", perfumeSize: Int(perfumeSize.text ?? "0" ) ?? 0 , perfumePrice: Double(perfumePrice.text ?? "0.0") ?? 0.0, perfumeImg: perfumeImg.image!)
//        cart.product.append(Perffumee)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

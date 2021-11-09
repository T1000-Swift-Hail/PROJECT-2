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
        // Initialization code
    }

    func contentCell(perfumesImage : UIImage , perfumesName :String , perfumesPrice : Double , perfumesSize : Int){
        
        perfumeName.text = perfumesName
        perfumeSize.text = "\(perfumesSize)ml"
        perfumePrice.text = "\(perfumesPrice) SAR"
        imgMenPerfumes.image = perfumesImage
    }
    
    
    @IBAction func addToCartButt(_ sender: UIButton) {
        let PerfumeMen = Perffume(perfumeName: perfumeName.text ?? "", perfumeSize: Int(perfumeSize.text ?? "0" ) ?? 0 , perfumePrice: Double(perfumePrice.text ?? "0.0") ?? 0.0 , perfumeImg: imgMenPerfumes.image!)
        cart.product.append(PerfumeMen)
//        let Perffumee = Perffume(perfumeName: perfumeName.text ?? "", perfumeSize: Int(perfumeSize.text ?? "0" ) ?? 0 , perfumePrice: Double(perfumePrice.text ?? "0.0") ?? 0.0, perfumeImg: perfumeImg.image!)
//        cart.product.append(Perffumee)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

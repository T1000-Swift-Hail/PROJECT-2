//
//  HomePerfumes.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 03/04/1443 AH.
//

import UIKit

class HomePerfumes: UITableViewCell {

    @IBOutlet weak var perfumeImg: UIImageView!
    @IBOutlet weak var perfumeName: UILabel!
    @IBOutlet weak var perfumeSize: UILabel!
    @IBOutlet weak var perfumePrice: UILabel!
    @IBOutlet weak var addToCart: UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func contentCell(perfumesImage : UIImage , perfumesName :String , perfumesPrice : Double , perfumesSize : Int){
        
        perfumeName.text = perfumesName
        perfumeSize.text = "\(perfumesSize)ml"
        perfumePrice.text = "\(perfumesPrice) SAR"
        perfumeImg.image = perfumesImage
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

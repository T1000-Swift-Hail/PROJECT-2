//
//  Perfume.swift
//  MY_Second_Project
//
//  Created by Njoud Alrshidi on 05/04/1443 AH.
//

import Foundation
import UIKit
class Perfume {
    
    var perfumeName : String
    var perfumeSize : Int
    var perfumePrice : Double
    var perfumeImg : UIImage
    
    init(perfumeName: String ,perfumeSize: Int , perfumePrice: Double ,perfumeImg: UIImage  ){
        self.perfumeName = perfumeName
        self.perfumeSize = perfumeSize
        self.perfumePrice = perfumePrice
        self.perfumeImg = perfumeImg
    }
}

//
//  ProductModel.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 03/04/1443 AH.
//

import Foundation

class ProductModel {
    var id              = 0
    var product_name    = ""
    var price           = 0.0
    var added_cart      = false
    var photo: Data?    = nil
    init(id: Int, product_name: String, price: Double, flag: Bool = false, photo: Data? = nil) {
        self.id     = id
        self.product_name = product_name
        self.price  = price
        self.added_cart = flag
        self.photo = photo
    }
    
}

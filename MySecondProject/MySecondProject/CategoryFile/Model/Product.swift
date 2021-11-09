//
//  Product.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    // Product
    init(title: String, price: String, imageName: String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}

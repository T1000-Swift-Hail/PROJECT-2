//
//  Product.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 02/04/1443 AH.
//

import Foundation
import UIKit


struct Product {
    
    let color : UIColor?
    var quantity:Int
    var price:Int
    var name : String
    
    
    
    func getProducts() -> [Product] {
        
        let product1 = Product(color:.darkGray,quantity:50, price:120,name:"darkchocolate")
        
        let product2 = Product(color: .white,quantity: 100,price: 200,name: "whitechocolate")
        
        let product3 = Product(color: .brown,quantity: 120,price: 150,name: "brownchocolate")
    
        return [product1,product2,product3]
    }
}

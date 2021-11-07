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
    
    
    func getProducts() -> [Product] {
        
        let product1 = Product(color: .darkGray)
        let product2 = Product(color: .white)
        let product3 = Product(color: .brown)
        
        return [product1,product2,product3]
    }
//
//
//    var products = ["product":"string","product2":"string","product3":"string]
//
//    var product = Products(color: "dark", quantity: 50, price: 120 , name: "dark chocolate", productType: .darkChocolate)
//
//    var product2 = Product(color: "white", quantity: 80, price: 150 , name: "milk chocolate", productType: .milkChocolate)
//    var product3 = Product(color: "brown", quantity: 90, price: 180, name: "brownchocolate", productType: .brownChocolate)
//
//
//
//
//    var storeProducts = [product, product2, product3]
//
//    print("Our list of prodcuts....")

}

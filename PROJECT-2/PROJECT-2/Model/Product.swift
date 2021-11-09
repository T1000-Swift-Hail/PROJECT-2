//
//  Product.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import Foundation
import UIKit

enum ErrorOrder: Error {
    case noSizeAV
    case outOfStouck
}
enum BrandType {
    case niki
    case addias
    case Puma
    case kswiss
}
enum SizeTypes: String {
    case xl = "XL"
    case m = "M"
    case l = "L"
    case s = "S"
    case other = "Other"
}

enum ColorType: String {
    case black = "Black"
    case yellow = "Yellow"
    case blue = "Blue"
    case white = "white"
    case other = "Other"
}

struct Product {
    
    var productName: String?
    var price:Int?
    var quantity :Int?
    var productSize : SizeTypes?
    var productBrand: BrandType?
    var productColor: ColorType?
    
    //var productColor: String
    var uiImage : UIImage?
    var tshirtImage :UIImage?
    
   // var category:BrandType
  //  var sectionOfProduct:[Int:String]
    
    
    func getProducts() -> [Product] {
        
        let productAddias = Product(productName: "T-shirt", price: 600, quantity: 18, productSize: .l, productBrand: .addias, productColor: .blue, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addias blue shirt")!)
        
        
        let productAddias2 = Product(productName: "pants", price: 590, quantity: 5, productSize: .s, productBrand: .addias, productColor: .black, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addais black pants")!)
        
        let productAddias3 = Product(productName: "shoes", price: 780, quantity: 3, productSize: .xl, productBrand: .addias, productColor: .blue, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addias shoes blue")!)
        
        let productAddias4 = Product(productName: "T-shirt", price: 600, quantity: 8, productSize: .m, productBrand: .addias, productColor: .black, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addias shirt black")!)
        
        
        let productNiki = Product(productName: "T-shirt", price: 300, quantity: 16, productSize: .s, productBrand: .niki, productColor: .yellow, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "niki tishrt yellow")!)
        
        let productNiki2 = Product(productName: "shoes", price: 250, quantity: 3, productSize: .m, productBrand: .niki, productColor: .white, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "white addias")!)
        
        let productNiki3 = Product(productName: "pants", price: 210, quantity: 14, productSize: .l, productBrand: .niki, productColor: .black, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "niki pants black")!)
        
        let productNiki4 = Product(productName: "shoes", price: 300, quantity: 33, productSize: .xl, productBrand: .niki, productColor: .white, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "white niki shoes")!)
        
        
        let productpuma = Product(productName: "T-shirt", price: 290, quantity: 16, productSize: .m, productBrand: .Puma, productColor: .black, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "black tishrt puma")!)
        
        let productpuma2 = Product(productName: "T-shirt", price: 300, quantity: 16, productSize: .l, productBrand:.Puma, productColor: .yellow, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "puma tishrt yellow")!)
        
        let productpuma3 = Product(productName: "pants", price: 300, quantity: 16, productSize: .xl, productBrand: .Puma, productColor: .yellow, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "blue pants puma")!)
        
        let productpuma4 = Product(productName: "T-shirt", price: 300, quantity: 16, productSize: .s, productBrand: .Puma, productColor: .yellow, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "black tishrt puma")!)

        
        
        
        
        
        
        
        
        
        
        
//        let productNike = Product(productName: "Jeans", price: 250, quantity: 3, productSize: .l, productBrand: .addias, productColor: .yellow, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "04")!)

     
      //    let productNike = Product(productName: "Nike", price: 24, quantity: 5, productSize: .s, productColor: "red", uiImage: UIImage(named: "2")!,tshirtImage: UIImage(named: "55")!)
      //
      //    let productNike1 = Product(productName: "Nike", price: 550, quantity: 7, productSize: .m, productColor: "black", uiImage: UIImage(named: "2")!,tshirtImage: UIImage(named: "55")! )
      //
      //    let productNike2 = Product(productName: "Nike", price: 24, quantity: 5, productSize: .other, productColor: "red", uiImage: UIImage(named: "2")!,tshirtImage: UIImage(named: "55")!)
      //
      //    let productAddias1 = Product(productName: "Nike", price: 24, quantity: 5, productSize: .other, productColor: "red", uiImage: UIImage(named: "2")!,tshirtImage: UIImage(named: "55")!)
      //
      //    let productAdias2 = Product(productName: "Nike", price: 24, quantity: 5, productSize: .other, productColor: "red", uiImage: UIImage(named: "2")!,tshirtImage: UIImage(named: "55")!)
      //
        
        
     //   products.append(productAddias)
      //  products?.append(productAddias2)
//
//        products2.append(productNike)
//        products2.append(productNike1)
//        products2.append(productNike2)
//        products2.append(productAddias)
//        products2.append(productAddias1)
//        products2.append(productAdias2)
//
        
        
        
        
        return [productAddias,productAddias2,productAddias3,productAddias4,productNiki,productNiki2,productNiki3,productNiki, productpuma, productpuma2, productpuma3, productpuma4]
    }
}

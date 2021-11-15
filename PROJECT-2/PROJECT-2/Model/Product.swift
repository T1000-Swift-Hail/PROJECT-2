//
//  Product.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//


import UIKit

enum BrandType {
    case niki
    case addias
    case Puma
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

enum ProductType {
    case tshirt
    case pants
    case shoes
}

struct Product {
    var productType:ProductType?
    var productName: String?
    var price:Int?
    var quantity :Int?
    var productSize : SizeTypes?
    var productBrand: BrandType?
    var productColor: ColorType?
    var prodcutImageColors : [String] = ["","","",""]
    var uiImage : UIImage?
    var tshirtImage :UIImage?
    
    
    func getProducts() -> [Product] {
        
        var productAddias = Product(productType: .tshirt, productName: "T-shirt".localization, price: 600, quantity: 18 , productSize: .l, productBrand: .addias, productColor: .blue, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addias black shirt")!)
        
        productAddias.prodcutImageColors = ["addias black shirt", "addias yellow shirt","addias white shirt", "addias blue shirt"]
        
        var productAddias2 = Product(productType:.pants, productName: "pants", price: 590, quantity: 33 , productSize: .s, productBrand: .addias, productColor: .black, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addais black pants")!)
        productAddias2.prodcutImageColors = ["addais black pants","addias yellow pants","addias white pants","addias blue pants"]
        
        var productAddias3 = Product(productType: .shoes, productName: "shoes", price: 780, quantity: 3 , productSize: .xl, productBrand: .addias, productColor: .blue, uiImage: UIImage(named: "1")!, tshirtImage: UIImage(named: "addias black shoes")!)
        
        productAddias3.prodcutImageColors = ["addias black shoes","addias yellow shoes","addias white shoes","addias blue shoes"]
        
        var productNiki = Product(productType: .tshirt, productName: "T-shirt", price: 300, quantity: 16 , productSize: .s, productBrand: .niki, productColor: .yellow, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "niki black shirt")!)
        
        productNiki.prodcutImageColors = ["niki black shirt","niki yellow shirt","niki white shirt","niki blue shirt"]
        
        var productNiki2 = Product(productType: .shoes, productName: NSLocalizedString("shoes", comment: ""), price: 250 , quantity: 3, productSize: .m, productBrand: .niki, productColor: .white, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "niki black shoes")!)
        
        productNiki2.prodcutImageColors = ["niki black shoes","niki yellow shoes","niki white shoes","niki blue shoes"]
        
        var productNiki3 = Product(productType: .pants, productName: "pants", price: 210, quantity: 14 , productSize: .l, productBrand: .niki, productColor: .black, uiImage: UIImage(named: "2")!, tshirtImage: UIImage(named: "niki black pants")!)
        
        productNiki3.prodcutImageColors = ["niki black pants","niki yellow pants","niki white pants","addias blue pants"]
        
        var productpuma = Product(productType: .tshirt, productName: "T-shirt", price: 290, quantity: 16, productSize: .m, productBrand: .Puma, productColor: .black, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "puma black shirt")!)
        
        productpuma.prodcutImageColors = ["puma black shirt","puma yellow shirt","puma white shirt","puma blue shirt"]
        
        var productpuma2 = Product(productType: .shoes, productName: "Shoes", price: 300, quantity: 16 , productSize: .s, productBrand: .Puma, productColor: .yellow, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "puma black shoes")!)
        
        productpuma2.prodcutImageColors = ["puma black shoes", "puma yellow shoes","puma white shoes","puma blue shoes"]
        
        var productpuma3 = Product(productType: .pants, productName: "Pants", price: 300, quantity: 66 , productSize: .l, productBrand:.Puma, productColor: .yellow, uiImage: UIImage(named: "3")!, tshirtImage: UIImage(named: "puma black pants")!)
        
        productpuma3.prodcutImageColors = ["puma black pants", "puma yellow pants","puma white pants","puma blue pants"]
        
        return [productAddias,productAddias2,productAddias3,productNiki,productNiki2,productNiki3,productpuma,productpuma2,productpuma3]
    }
}

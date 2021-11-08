//
//  Product.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import Foundation

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

struct Product {
    
    var productName: String
    var price:Int
    var quantity : Int
    var productSize : SizeTypes
    var productColor: String
   // var category:BrandType
  //  var sectionOfProduct:[Int:String]
}

//
//  Product.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 02/04/1443 AH.
//

import Foundation
import UIKit
//This for name ,image product

// Enumartion for chocolate Types
enum ChocolateTypes: String {
    case whiteChocolate = "whiteChocolate"
    case darkChocolate =  "darkChocolate"
    case brownChocolate = "brownChocolate"
    case proteinChocolate = "protenChocolate"
     case belgianChocolate = "belgianChocolate"
}

struct Product {
    
    var name : String
    var image : UIImage
}

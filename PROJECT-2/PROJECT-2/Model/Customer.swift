//
//  Customer.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import Foundation
struct Customer:User{
    var userName: String
    var userPassword: Int
    var FirstName: String
    var MiddleName:String?
    var LastName : String
    var address:String
    var ShoppingCart:[Product]?
    
}

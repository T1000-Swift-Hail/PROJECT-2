//
//  Customer.swift
//  PROJECT-2
//
//  Created by Seham الشطنان on 03/04/1443 AH.
//

import Foundation



struct User {
    
    var email: String
    var phone: Int
    var name :String
    var thenumber:Int
    var price:Int
    var shoppingCart : [Product]
    var passWord :String
    var age :Int
    
    

    func getUser () -> User {
        return User(email: "Hind234@gmail.com", phone: 050765432, name: "Hind", thenumber: 160, price: 345, shoppingCart: [], passWord: "34As", age: 29)
       
        
        
        
        
        
        

        
    }
}


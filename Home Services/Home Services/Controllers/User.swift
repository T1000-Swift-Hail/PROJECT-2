//
//  User.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import Foundation
import UIKit

// struct of user how login in app

struct User {
    
    var username : String
    var address : String
    var passward : Int
    
    func login(username : String, address : String, password : String ) -> Bool {
       
        print("\(username) is logged in !")
       
        return true
        
    }
    
    static func getAllUsers(arrayOfUsers: [User]) {
        for user in arrayOfUsers {
          
            print("This is a \(user.username)")
        }
    }
  
    static func == (lhs: User, rhs: User) -> Bool {
       
        return lhs.username  == rhs.username
   
    }
    
    func hash(into hasher: inout Hasher) {
       
        hasher.combine(username)

    }
}
    
    


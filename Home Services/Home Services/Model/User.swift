//
//  User.swift
//  Home Services
//
//  Created by Munira abdullah on 03/04/1443 AH.
//

import Foundation
import UIKit

// struct of user login in app

struct User {
    
    var username : String
    var address : String
    var passward : Int
    
    // function if user put username and address and password return true
    
    func login(username : String, address : String, password : String ) -> Bool {
       
        print("\(username) is logged in !")
       
        return true
        
    }
    
  // static username
    
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
    
    


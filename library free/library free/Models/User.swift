//
//  File.swift
//  library free
//
//  Created by موضي الحربي on 03/04/1443 AH.
//

import Foundation
import UIKit

struct User  {
    var email : String
    var password : Int
    
    func login(email : String , password : Int ) -> Bool {
    print (" \(email) is login in !")

    return true
    }
}

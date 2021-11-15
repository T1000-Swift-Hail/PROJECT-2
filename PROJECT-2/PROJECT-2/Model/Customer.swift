//
//  Customer.swift
//  PROJECT-2
//
//  Created by Mac on 07/11/2021.
//

import Foundation
//protocol
protocol User {
    var userName :String {get}
    var userPassword :Int {get}
}
//struct for user customer 
struct Customer: User {
    var userName: String
    var userPassword: Int
    var firstName: String?
    var middleName:String?
    var lastName : String?
    var email:String?
    var phoneNumber:Int?
    var address:String?
}

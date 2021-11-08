//
//  Customer.swift
//  PROJECT-2
//
//  Created by HIND12 on 03/04/1443 AH.
//

import Foundation

class Customer {

    var name: String
    var age: Int
    let services : [Service]
    var password: String
    
    var description : String {
        return " the customer name is \(name) and age is \(age)"
    }
    // customers trainong with the golden car .
        func buyPackage(payment : Int) throws -> String {
            print("\(name) paid \(payment)")
            if (payment>500)  {
                print("Your card is gold , you can train . This number is \(payment)")
            } else if (payment < 500) {
                print("This payment is low you cannot train. Buy the Gold ,The number is \(payment)")
  throw ErrorPayment.paymentLow
            }else {
            }
            return ""
        }
        
        func train(){
            print("\(name) is training ...")
        }
                
                
    
    init (name : String, age : Int, service:[Service],password:String) {
    self.name = name
       self.age = age
     self.services = service
     self.password = password
       }
}

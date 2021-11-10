//
//  File.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import Foundation
public class Constants {
    
    public let entryID = "entryPage"
    let signinID = "signinPage"
    let signupID = "signupPage"
    let updateID = "updatePage"
    
    class func updateID() -> String { return "updatePage" }
    
    class func sandboxBaseURL() -> String { return "https://authapp001.herokuapp.com/" }
    
    class func liveBaseURL () -> String { return "https://authapp001.herokuapp.com/" }
    
    class func isConnectedToInternet() ->Bool { return SingInViewController().isReachable }
    
    class func relativeURL()->Dictionary<String,String>{
        return [
            "LOGIN"     : "api/auth/login",
            "REGISTER"  : "api/auth/signup",
            "OTP"       : "api/auth/send-otp",
            ]
            }
            }
      

        struct Keys {
            static let full_name    = "full_name"
            static let first_name   = "first_name"
            static let last_name    = "last_name"
            static let username     = "username"
            static let user_id      = "user_id"
            static let is_logged_in = "is_logged_in"
            static let is_provider  = "is_provider"
        }

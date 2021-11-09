//
//  Category.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation

struct Category {
    // private(set)
    //  public
    private(set) public var title: String
    private(set) public var imageName: String
    
    //
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
} // 

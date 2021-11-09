//
//  DataService.swift
//  MySecondProject
//
//  Created by MACBOOK on 03/04/1443 AH.
//

import Foundation


class DataService {
   
    static let instance = DataService()
    
    
    private let categories = [
        Category(title: "SunGlasses", imageName: "SunglassesPoster.png"),
        Category(title: "Glasses", imageName: "GlassesPoster.jpeg"),
    ]
    
    //Sunglasses
    private let sunglasses = [
        Product(title: "Dior sunglasses", price: "200 Dollers", imageName: "diorSunglasses.webp"),
        Product(title: "Police Sunglasses", price: "70.00 Dollers", imageName: "PoliceSunglasses.jpeg"),
        Product(title: "Fendi Sunglasses", price: "400.00 Dollers", imageName: "FendiSunglasses.jpeg"),
        Product(title: "Ray Ban Sunglasses", price: "66.00 Dollers", imageName: "RayBanSunG.jpeg"),
    ]
    // glasses
    private let glasses = [
        Product(title: "Cartier glasses", price: "500.00 Dollers", imageName: "CarterGlasses.jpeg"),
        Product(title: "Gucci glasses", price: "200.00 Dollers", imageName: "GucciGlas.jpeg"),
        Product(title: "D&G glasses", price: "100.00 Dollers", imageName: "D&Gglas.jpeg"),
        Product(title: "LV glasses", price: "350.00 Dollers", imageName: "LVglas.png"),

    ]
    
    
    private let etc = [Product]()
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SunGlasses":
            return getSunglasses()
        case "Glasses":
           return getGlasses()
        default:
           return getGlasses()
        }
    }
    
    func getSunglasses() -> [Product] {
        return sunglasses
    }
    
    func getGlasses() -> [Product] {
        return glasses
    }
    
    
}

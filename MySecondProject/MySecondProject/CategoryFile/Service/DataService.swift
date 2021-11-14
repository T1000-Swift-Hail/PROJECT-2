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
        Category(title: "SunGlasses", imageName: "SunGlasPoster.png"),
        Category(title: "Glasses", imageName: "GlassesPoster.jpeg"),
        Category(title: "VR Glasses", imageName: "VRposter.jpeg"),
        Category(title: "Smart Glasses", imageName: "smartPoster.jpeg"),
        Category(title: "Kids Glasses", imageName: "kidsGlasposter.jpeg"),
    ]
    
    //Sunglasses
    private let sunglasses = [
        Product(title: "Dior sunglasses", price: "200 Dollers", imageName: "diorSun.jpeg"),
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
    // vr glasses
    private let varGlasses = [
        Product(title: "HB VR", price: "200.00 Dollers", imageName: "HPvr3.jpeg"),
        Product(title: "HTC VR", price: "2500.00 Dollers", imageName: "HTCvr.jpeg"),
        Product(title: "HTC mi VR", price: "150.00 Dollers", imageName: "HTCvr1.jpeg"),
        Product(title: "HTC ni VR", price: "350.00 Dollers", imageName: "HTCvr2.png"),
        
    ]
    
    
    private let smartGlasses = [
        Product(title: "xim smart", price: "255.00 Dollers", imageName: "smartGlas1.jpeg"),
        Product(title: "fb smart", price: "220.00 Dollers", imageName: "smartGlas2.jpeg"),
        Product(title: "Sn smart", price: "150.00 Dollers", imageName: "smartGlas3.jpeg"),
        Product(title: "hu smart", price: "120.00 Dollers", imageName: "smartGlas4.png"),
        
    ]
    
    
    private let kidsGlasses = [
        Product(title: "kids", price: "70.00 Dollers", imageName: "kidsGlas1.jpeg"),
        Product(title: "kids", price: "50.00 Dollers", imageName: "kidsGlas2.jpeg"),
        Product(title: "kids", price: "40.00 Dollers", imageName: "kidsGlas3.jpeg"),
        Product(title: "kids", price: "60.00 Dollers", imageName: "kidsGlas4.png"),
        
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
        case "VR Glasses":
            return getvarGlasses()
        case "Smart Glasses":
            return getSmartGlasses()
        case "Kids Glasses":
            return getKidsGlasses()
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
    
    func getvarGlasses() -> [Product] {
        
        return varGlasses
    }
    
    func getSmartGlasses() -> [Product] {
        
        return smartGlasses
    }
    
    func getKidsGlasses() -> [Product] {
        
        return kidsGlasses
    }
    
}

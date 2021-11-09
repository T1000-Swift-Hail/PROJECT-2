//
//  DataBaseHelper.swift
//  DecAntique
//
//  Created by Dalal AlSaidi on 04/04/1443 AH.
//
//

import UIKit
import CoreData

class DataBaseHelper {
    
    static let shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveProduct(data: Data) {
        let imageInstance = Product(context: context)
        imageInstance.photo = data
            
        do {
            try context.save()
            print("Image is saved")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchProduct() -> [Product] {
        var fetchingData = [Product]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
        
        do {
            fetchingData = try context.fetch(fetchRequest) as! [Product]
        } catch {
            print("Error while fetching the image")
        }
        
        return fetchingData
    }
}

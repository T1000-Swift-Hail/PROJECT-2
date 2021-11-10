//
//  CashManager.swift
//  newproject
//
//  Created by Ahmed Alenazi on 04/04/1443 AH.
//


import Foundation
import UIKit
// MARK: - Caching

class CachingManager {
    
    let cache = NSCache<NSString, UITextField>()
    var inpotKeys: NSString = NSString(string: "text")
    
    func inpotURL(forKey key: String) -> URL {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent(key)
    }
    
    func setInpot(_ inpot: UITextField, forKey key: String) {
        cache.setObject(inpot, forKey: key as NSString)
        // Create full URL for image
        
        let url = inpotURL(forKey: key)
        if var text = inpot.text {
            try? text.write("\(url)")
    }
    }
    func inpot(forKey key: String) -> UITextField? {
       // return cache.object(forKey: key as NSString)

        if let existingInpot = cache.object(forKey: key as NSString) {
            return existingInpot
        }
        //return nil
        let url = inpotURL(forKey: key)
        guard let inpotFromDisk = UITextField(contentsOfFile: url.path) else { return nil }
        cache.setObject(inpotFromDisk, forKey: key as NSString)
        return inpotFromDisk
    }
    
    func deleteInpotFromCach(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
    
    func deleteInpotFromFileSystem(forKey key: String) {

       // cache.removeObject(forKey: key as NSString)

        let url = inpotURL(forKey: key)
        do {
            try FileManager.default.removeItem(at: url)
        } catch {
            print("Error removing the Inpot from disk: \(error)")
        }
    }
    
}


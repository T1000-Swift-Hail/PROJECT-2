//
//  CashingManager.swift
//  newproject
//
//  Created by Ahmed Alenazi on 05/04/1443 AH.
//

import Foundation

import UIKit

class CachingManager {
    
    let cache = NSCache<NSString, UIImage>()
    var imageKeys: NSString = NSString(string: "key")
    
    func imageURL(forKey key: String) -> URL {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent(key)
    }
    
    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
        // Create full URL for image
        
        let url = imageURL(forKey: key)
        // Turn image into JPEG data
        if let data = image.jpegData(compressionQuality: 0.5) {
            // Write it to full URL
            try? data.write(to: url)
        }
    }
    func image(forKey key: String) -> UIImage? {
       // return cache.object(forKey: key as NSString)

        if let existingImage = cache.object(forKey: key as NSString) {
            return existingImage
        }
        //return nil
        let url = imageURL(forKey: key)
        guard let imageFromDisk = UIImage(contentsOfFile: url.path) else { return nil }
        cache.setObject(imageFromDisk, forKey: key as NSString)
        return imageFromDisk
    }
    
    func deleteImageFromCach(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
    
    func deleteImageFromFileSystem(forKey key: String) {

       // cache.removeObject(forKey: key as NSString)

        let url = imageURL(forKey: key)
        do {
            try FileManager.default.removeItem(at: url)
        } catch {
            print("Error removing the image from disk: \(error)")
        }
    }
    
}

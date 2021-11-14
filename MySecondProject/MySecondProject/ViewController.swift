//
//  ViewController.swift
//  MySecondProject
//
//  Created by MACBOOK on 01/04/1443 AH.
//

import UIKit
import PhotosUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, PHPickerViewControllerDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    let imgStore = ImgStore()
    let myFavImage = "myImageKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageToDisplay = imgStore.image(forKey: myFavImage)
        //Set the myImageView.image to imageToDisplay
        myImageView.image = imageToDisplay
    }
    
    @IBAction func OpenPhotosLibrary(_ sender: Any) {
        // your code here
        presentPhotoPicker()
    }
    
    @IBAction func OpenCam(_ sender: Any) {
        //your code here
        presentImagePicker()
    }
    
    func presentImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    func presentPhotoPicker() {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 3
        configuration.filter = .images
        let photoPicker = PHPickerViewController(configuration: configuration)
        photoPicker.delegate = self
        present(photoPicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        
        // Take image picker off the screen - you must call this dismiss method
        dismiss(animated: true, completion: nil)
        
        // Get picked image from info dictionary
        let image = info[.originalImage] as! UIImage
        
        // Put that image in the imageView
        myImageView.image = image
        
        // Store the image in the ImageStore for the item's key
        imgStore.setImage(image, forKey: myFavImage)
    
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true, completion: nil)
        
        let alert = UIAlertController (title: "Thanks customer, we will look for the product and we will contact you soon", message: "", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Done", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        if let result = results.first, result.itemProvider.canLoadObject(ofClass: UIImage.self) {
            result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
                if let image = image as? UIImage {
                    
                    // Store the image in the ImageStore for the item's key
                    self.imgStore.setImage(image, forKey: self.myFavImage)
                    
                    DispatchQueue.main.async {
                        
                        // Put the image in the imageview
                        self.myImageView.image = image
                    }
                }
            }
        }
    }
    
    
    
    
}

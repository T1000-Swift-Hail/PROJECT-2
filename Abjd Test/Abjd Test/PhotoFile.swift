//
//  PhotoFile.swift
//  Abjd Test
//
//  Created by noyer altamimi on 09/04/1443 AH.
//

import UIKit
import PhotosUI

class PhotoFile: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, PHPickerViewControllerDelegate {

    @IBOutlet weak var myImageView: UIImageView!
    
    let imgStore = profile()
    let myFavImage = "myImageKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let imageToDisplay = imgStore.image(forKey: myFavImage)
     
        
        
        self.myImageView.image = imageToDisplay
        
        
        
    }
    @IBAction func ChoosePhoto(_ sender: Any) {
        presentPhotoPicker()
    }
 
     
    @IBAction func OpenCamera(_ sender: Any) {
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
        configuration.selectionLimit = 1
        configuration.filter = .images

        let photoPicker = PHPickerViewController(configuration: configuration)
        photoPicker.delegate = self
        present(photoPicker, animated: true, completion: nil)
    }
    
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {

        
        dismiss(animated: true, completion: nil)

        
        let image = info[.originalImage] as! UIImage

        myImageView.image = image

        
        imgStore.setImage(image, forKey: myFavImage)

    }

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true, completion: nil)

        if let result = results.first, result.itemProvider.canLoadObject(ofClass: UIImage.self) {
            result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
                if let image = image as? UIImage {
              
                    self.imgStore.setImage(image, forKey: self.myFavImage)

                    
                    DispatchQueue.main.async {
                       
                        self.myImageView.image = image
                    }
                }
            }
        }
    }
    
    
    
    
}



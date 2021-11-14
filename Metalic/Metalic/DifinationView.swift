//
//  DifinationView.swift
//  Metalic
//
//  Created by Anas Hamad on 04/04/1443 AH.
//

import UIKit

class DifinationView: UIViewController {

    
    @IBOutlet var textFeildView: UITextView!
    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = imageSelected
        textFeildView?.text = TextSelected
    }
    var imageSelected : UIImage?
    var TextSelected : String?

}

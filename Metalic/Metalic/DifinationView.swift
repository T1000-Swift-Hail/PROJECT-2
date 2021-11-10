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
    
    
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

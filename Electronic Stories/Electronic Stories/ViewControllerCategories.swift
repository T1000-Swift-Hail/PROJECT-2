//
//  ViewControllerCategories.swift
//  Electronic Stories
//
//  Created by Asma Rasheed on 04/04/1443 AH.
//

import UIKit

class ViewControllerCategories: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    
    
    @IBAction func showPhoneProducts(_ sender: Any) {
        
        performSegue(withIdentifier: "toProductsPage", sender: nil)
    }
   

    
    @IBAction func showGalaxy(_ sender: Any) {
        performSegue(withIdentifier: "galaxyProductsPage", sender: nil)
    }
}





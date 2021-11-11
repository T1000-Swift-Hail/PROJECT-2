//
//  RoomsViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class RoomsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func duplexButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Duplex", sender: nil)
    }
    

    @IBAction func singleButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Single", sender: nil)
    }
    


}

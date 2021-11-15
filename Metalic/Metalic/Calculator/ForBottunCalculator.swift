//
//  ForBottunCalculator.swift
//  Metalic
//
//  Created by Anas Hamad on 08/04/1443 AH.
//

import UIKit

class ForBottunCalculator: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func bottunPressure(_ sender: Any) {
        performSegue(withIdentifier: "pressureGear", sender: nil)
        
    }
    @IBAction func bottunRation(_ sender: Any) {
        performSegue(withIdentifier: "speedRation", sender: nil)
    }
    
}

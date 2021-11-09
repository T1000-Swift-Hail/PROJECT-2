//
//  RoomsViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class RoomsViewController: UIViewController {

    
    let titleName = "Second Page"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as? DuplexViewController
        vc?.get = titleName
        
    }
    
    
    @IBAction func duplexButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Duplex", sender: nil)
    }
    
    
    
    @IBAction func singleButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Single", sender: nil)
    }
    
   

}

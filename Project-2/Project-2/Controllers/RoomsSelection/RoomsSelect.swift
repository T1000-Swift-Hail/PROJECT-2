//
//  RoomsViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class RoomsSelect: UIViewController {

    @IBOutlet var duplexTitle: UILabel!
    @IBOutlet var singleTitle: UILabel!
    let userDefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        duplexTitle.text = "Duplex Room : 900SAR".localized
        singleTitle.text = "Single Room : 1200SAR".localized
    }
    
    
    
    @IBAction func duplexButton(_ sender: UIButton) {
        //Duplex
        DispatchQueue.main.async {
            self.userDefault.set("Duplex", forKey: "imageNameSelected")
        }
        performSegue(withIdentifier: "DuplexRoom", sender: nil)
        
    }
    

    @IBAction func singleButton(_ sender: UIButton) {
        //Single
        DispatchQueue.main.async {
            self.userDefault.set("Single", forKey: "imageNameSelected")
        }
        performSegue(withIdentifier: "SingleRoom", sender: nil)
    }
    


}

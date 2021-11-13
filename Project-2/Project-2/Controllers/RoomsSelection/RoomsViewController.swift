//
//  RoomsViewController.swift
//  Project-2
//
//  Created by Majed Alshammari on 03/04/1443 AH.
//

import UIKit

class RoomsViewController: UIViewController {

    @IBOutlet var duplexTitle: UILabel!
    @IBOutlet var singleTitle: UILabel!
    var imageSelected : UIImage?
    let userDefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        duplexTitle.text = "Duplex Room : 900SAR".localized
        singleTitle.text = "Single Room : 1200SAR".localized
        imageSelected = UIImage(named: "Duplex")

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? MyReservation
        vc?.selctedImage.image = imageSelected
    }
    
    
    @IBAction func duplexButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "Duplex", sender: nil)
        
    }
    

    @IBAction func singleButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Single", sender: nil)
    }
    


}

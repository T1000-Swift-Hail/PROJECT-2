//
//  SearchViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    
    let titleNeedToPass = "OverView"
    let sigaporeTitle = "Singaora"
    let derscraptionNeedToPass = "This tiny island city-state is a study of fusion and contrasts bursting with wonders waiting to be explored. Tranquil parks about futuristic skyscrapers and luxe shopping malls."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? SingaporeViewController
        vc?.getData = titleNeedToPass
        
        let vccc = segue.destination as? SingaporeViewController
        vccc?.getSingaporeData = derscraptionNeedToPass
        
        let vcc = segue.destination as? SingaporeViewController
        vcc?.getSecondData = sigaporeTitle
        
    }

    @IBAction func romaClick(_ sender: Any) {
        let alert = UIAlertController(title: "Soon ", message: "Something new is coming.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func parisClick(_ sender: Any) {
        let alert = UIAlertController(title: "Soon", message: "Something new is coming.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    
    
    @IBAction func singaporeBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "SingaporeBTN", sender: nil)
    }
    
    @IBAction func NYBtn(_ sender: Any) {
        performSegue(withIdentifier: "NYBTN", sender: nil)
    }
    
    @IBAction func thingsToDo(_ sender: Any) {
        performSegue(withIdentifier: "NYThingsBTN", sender: nil)
    }
    
    @IBAction func NyMapBtn(_ sender: Any) {
        performSegue(withIdentifier: "NyMapBTN", sender: nil)
    }
}

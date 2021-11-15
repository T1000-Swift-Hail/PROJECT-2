//
//  SearchViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/9/21.
//

import UIKit

class SearchViewController: UIViewController {
    
   // passing data from storyboard to another storyboard
   var getOverNy = ""
   var getNYC = " "
   var getSummary = " "
    
    @IBOutlet weak var overViewNy: UILabel!
    
    @IBOutlet weak var nycLabel: UILabel!
    
    @IBOutlet weak var nycSummary: UILabel!
    
    @IBOutlet weak var fallIamge: UIImageView!
    
    @IBOutlet weak var snowImage: UIImageView!
    
    let titleNeedToPass = "OverView".locatized
    let sigaporeTitle = "Singaora".locatized
    let derscraptionNeedToPass = "This tiny island city-state is a study of fusion and contrasts bursting with wonders waiting to be explored. Tranquil parks about futuristic skyscrapers and luxe shopping malls.".locatized
    let overViewNcy = "OverView".locatized
    let nyCLabel = "New York City".locatized
    let nySummary = "Come for the big dreams and dazzling lights, stay for the local haunts and the world's best pizza".locatized
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // passing data from storyboard to another storyboard
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? SingaporeViewController
        vc?.getData = titleNeedToPass
        
        let vccc = segue.destination as? SingaporeViewController
        vccc?.getSingaporeData = derscraptionNeedToPass
        
        let vcc = segue.destination as? SingaporeViewController
        vcc?.getSecondData = sigaporeTitle
        
    }
// alert for new country will be added soon
    
    @IBAction func romaClick(_ sender: Any) {
        let alert = UIAlertController(title: "Soon".locatized, message: "Something new is coming.".locatized, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK".locatized, style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    // alert for new country will be added soon
    @IBAction func parisClick(_ sender: Any) {
        let alert = UIAlertController(title: "Soon".locatized, message: "Something new is coming.".locatized, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK".locatized, style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    // performSegue between storyboards
    
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

//
//  SingaporeViewController.swift
//  AdvisorTripApp
//
//  Created by Hind Alharbi on 11/13/21.
//

import UIKit

class SingaporeViewController: UIViewController {
    
    var getData = " "
    var getSecondData = ""
    var getSingaporeData = ""
    
    
   @IBOutlet weak var overviewLableText: UILabel!
    @IBOutlet weak var singaporeLableText: UILabel!
   @IBOutlet weak var descriptionLable: UILabel!
  
    
    @IBOutlet weak var singaporeImage: UIImageView!
    @IBOutlet weak var secondSigaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overviewLableText.text = getData
        singaporeLableText.text = getSingaporeData
        descriptionLable.text = getSecondData
        singaporeImage.image = .init(named: "sing_1")
        secondSigaImage.image = .init(named: "sing_2")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func singoMap(_ sender: Any) {
        performSegue(withIdentifier: "SingMap", sender: nil)
        
        
        
    }
    }
    
    


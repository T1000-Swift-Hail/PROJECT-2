//
//  ViewControlleDetailsServices.swift
//  PROJECT-2
//
//  Created by HIND12 on 05/04/1443 AH.
//

import UIKit

class ViewControlleDetailsServices: UIViewController {

    @IBOutlet weak var titel: UILabel!
    @IBOutlet weak var descreb: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var servicDetails : Service!

    override func viewDidLoad(){
        super.viewDidLoad()
// The customer shows him the services,description and the price .
        titel.text = servicDetails.name.localized
        descreb.text = servicDetails.description.localized
        price.text = "\(servicDetails.price) SR"

        // Do any additional setup after loading the view.
    }
    //var ourServices = [training, boxing,swimming,yaki,zumba]
    // var DiversityofDiversityOfDiversityOfDiversityof = ["Cash", "Mada", "Applepay"]
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

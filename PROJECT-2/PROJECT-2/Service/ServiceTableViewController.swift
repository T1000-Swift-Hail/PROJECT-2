
//  ServiceTableViewController.swift
//  PROJECT-2
//
//  Created by HIND12 on 04/04/1443 AH.
//
//let PROJECT_NAME = "Health Club"
import UIKit

class ServiceTableViewController: UITableViewController {
    //let PROJECT_NAME = "Health Club"
    //let desc = "The health club is available most of the services"
    let trainingService = Service(name: "Training".localized, description: "muscle strengthening", price: 140)
    let boxingService = Service(name: "boxing".localized, description: "increase muscle mass", price: 160)
    let swimmingService = Service(name: "swimming".localized, description: "physical activity", price: 170)
    //let trainingService = Service(name: "Training", description: "muscle strengthening", price: 140)
    //let trainingService = Service(name: "Training", description: "muscle strengthening", price: 140)
    let yakiService = Service(name:"yaki".localized,description: "relaxation",price: 120)
    let zumbaService = Service(name:"zumba".localized,description: "fitness",price: 150)
 var ourServices  = [Service]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ourServices.append(trainingService)
        ourServices.append(boxingService)
        ourServices.append(swimmingService)
        ourServices.append(yakiService)
        ourServices.append(zumbaService)
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return ourServices.count
     }
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServiceCell
         cell.Service.text = ourServices[indexPath.row].name
         
         // Configure the cell...
         
         return cell
     }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ServiceDetails", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ServiceDetails" {
            
            let destination = segue.destination as! ViewControlleDetailsServices
            destination.servicDetails = ourServices[tableView.indexPathForSelectedRow?.row ?? 0]
            
        }
    }
   
}

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
        
    }
}

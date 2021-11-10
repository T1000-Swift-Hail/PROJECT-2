//
//  ServiceTableViewController.swift
//  PROJECT-2
//
//  Created by HIND12 on 04/04/1443 AH.
//

import UIKit

class ServiceTableViewController: UITableViewController {

    let trainingService = Service(name: "Training", description: "ggg", price: 444)
    let boxingService = Service(name: "boxing", description: "", price: 450)
    let swimmingService = Service(name: "Training", description: "", price: 450)
    //let trainingService = Service(name: "Training", description: "", price: 450)
    //let trainingService = Service(name: "Training", description: "", price: 450)
    
    var ourServices  = [Service]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ourServices.append(trainingService)
        ourServices.append(boxingService)
        ourServices.append(swimmingService)
        
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

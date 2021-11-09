//
//  ServiceTableViewController.swift
//  PROJECT-2
//
//  Created by HIND12 on 04/04/1443 AH.
//

import UIKit

class ServiceTableViewController: UITableViewController {
 
 var LestourServices = ["training", "boxing" ,"swimming","yaki","zumba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return LestourServices.count
     }
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServiceCell
         cell.Service.text = LestourServices[indexPath.row]
         // Configure the cell...
         
         return cell
     }
   
}
